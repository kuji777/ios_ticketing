//
//  TaskEditView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskEditView: View {
    
        @EnvironmentObject var tasklists : TaskLists
        @State private var name: String = ""
        @State private var description: String = ""
        @State private var location: String = ""
        @State private var selectedType = 0
        @State private var datas: String = ""
        private let apiKey: String = "afb9c52b2dfa85e1a3acbeda56425a6d"
    
        let session = URLSession.shared
//        @State
        
        var types = ["Material", "Software", "Other"]
        
        var body: some View {
            VStack() {
                Text("New Task").offset(.init(width: 0, height: -130))
                    .font(.title)
                
                VStack(alignment: .leading){
    //                Text("Types : \(types[selectedType])")
    //                    .font(.headline)
                    Picker(selection: $selectedType, label: Text("Type").font(.headline)) {
                       ForEach(0 ..< types.count) {
                          Text(self.types[$0])
                       }
                    }
                    
                    Text("Task name :")
                        .font(.headline)
                    TextField("Name", text: $name)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )

                    Text("Descrition :")
                        .font(.headline)
                    TextField("Description", text: $description)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    Text("Location :")
                        .font(.headline)
                    TextField("Location", text: $location)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                HStack(){
                    Button(action: {
                        //Send HTTP request for creation of Tasks
                        
                        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/76341?api_key=" + self.apiKey)!)
                        
                        request.httpMethod = "POST"
                        
                        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                        
                        let json = [
                            "name": self.name,
                            "description": self.description,
                            "location": self.location,
                            "type": self.types[self.selectedType]
                        ]
                        
                        let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
                        
                        let task = self.session.uploadTask(with: request, from: jsonData) { data, response, error in
                            // Do something
                            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                                print(dataString)
                            }
                            
                            if let httpResponse = response as? HTTPURLResponse {
                                print(httpResponse.statusCode)
//                                if httpResponse.statusCode == 200{
                                    let newTask = Task(taskId: "", name: self.name, description: self.description, location: self.location, status: "opened", selectedUserType: self.types[self.selectedType])
                                
                                    self.tasklists.openTaskList.append(newTask)
                                
                                    self.datas = "New task name: " + newTask.name + "; description: " + newTask.description + "; location: " + newTask.location + "; type: " + newTask.selectedUserType + "; status: " + newTask.status
//                                }
                            }
                        }
                        
                        

                        task.resume()
                        
                    }) {
                        Text("Submit")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                
                Text(datas)
            }.padding()
            .navigationBarTitle("Edit")
        }
}

struct TaskEditView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditView()
    }
}
