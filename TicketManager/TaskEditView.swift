//
//  TaskEditView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskEditView: View {
        @State private var name: String = ""
        @State private var description: String = ""
        @State private var location: String = ""
        @State private var selectedType = 0
        
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
                        //do none
                    }) {
                        Text("Submit")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }.padding()
            .navigationBarTitle("Edit")
        }
}

struct TaskEditView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditView()
    }
}
