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
                
                            
                VStack(alignment: .leading) {
                    
                    
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
                    
                    Text("TASK STATUS : \(task.status)")
                    .font(.headline)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                }
                
                }
 }
 }
