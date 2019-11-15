//
//  TaskDetailsView.swift
//  TicketManager
//
//  Created by Etudiant on 13/11/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskDetailsView: View {
    
    @State var task: Task
    @State private var selectedStatus = 0
    @State private var datas: String = ""
           private let apiKey: String = "afb9c52b2dfa85e1a3acbeda56425a6d"
       
           let session = URLSession.shared

    var status = ["NEW", "ON GOING", "PENDING", "DONE"]
    let image = Image("Task")
    
    
    
    var body: some View {
           
            
    
            VStack() {
                Text("Task Details").offset(.init(width: 0, height: -180))
                    .font(.title)
                /*image
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .topLeading)
                .clipped()
                .listRowInsets(EdgeInsets())
                
                */
                
                            
                VStack(alignment: .leading) {
                    
                    Picker(selection: $task.status, label: Text("Status").font(.headline)) {
                       ForEach(0 ..< status.count) {
                        Text(self.status[$0]).tag(self.status[$0])
                       }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Text("TASK NAME : \(task.name)")
                    .font(.headline)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                    Text("TASK DESCRIPTION : \(task.description)")
                    .font(.headline)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    Text("TASK LOCATION : \(task.location)")
                    .font(.headline)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                }
                
                HStack(){
                            Button(action: {
                                //Send HTTP request for creation of Tasks
                                self.datas = self.status[self.selectedStatus]
                                
                                var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/76341?api_key=" + self.apiKey)!)
                                
                                request.httpMethod = "POST"
                                
                                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                                
                                let json = [
                                    "status": self.status,
                                    ]
                                
                                let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
                                
                                let task = self.session.uploadTask(with: request, from: jsonData) { data, response, error in
                                    // Do something
                                    if let data = data, let dataString = String(data: data, encoding: .utf8) {
                                        print(dataString)
                                    }
                                    
                                    if let httpResponse = response as? HTTPURLResponse {
                                        print(httpResponse.statusCode)
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
                }
    
    func getStatus() -> Int{
    
        switch (task.status){
                          case ("ON GOING"):
                           return 1
                          case ("PENDING"):
                           return  2
                          case ("DONE"):
                           return  3
                          default:
                           return  0
                          }
    }

 }
