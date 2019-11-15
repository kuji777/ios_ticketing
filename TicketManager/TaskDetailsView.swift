//
//  TaskDetailsView.swift
//  TicketManager
//
//  Created by Etudiant on 13/11/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskDetailsView: View {
    
    
    @State var task: Task = Task(taskId: "taskId", name : "NAME", description : "DESCRIPTION", location : "LOCATION", status : "STATUS", selectedUserType : "CLIENT")

    var types = ["Material", "Software", "Other"]
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
                
                    
                    Button(action: {
                            //change status value
                        }) {
                            Text(task.status)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }*/
            
                
                VStack(alignment: .leading) {
                    
                    Text("Task name :")
                    .font(.headline)
                    Tex
                
                    Text("Task description :")
                    .font(.headline)
                    
                    Text("Task location :")
                    .font(.headline)
                    
                }
            }
            
    
        }
        
    }

/*struct Task {
    var taskId: String = ""
    var name: String = ""
    var description: String = ""
    var location: String = ""
    var status: String = ""
    var selectedUserType = 0
}*/
