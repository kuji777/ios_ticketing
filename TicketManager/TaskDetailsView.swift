//
//  TaskDetailsView.swift
//  TicketManager
//
//  Created by Etudiant on 13/11/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskDetailsView: View {
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var location: String = ""
    @State private var status: String = ""
    @State private var selectedUserType = 0
    
    @State var task: Task = Task(taskId: "taskId", name : "NAME", description : "DESCRIPTION", location : "LOCATION", status : "STATUS", selectedUserType : "CLIENT")

    var types = ["Material", "Software", "Other"]
    let image = Image("Task")
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            image
            .resizable()
            .scaledToFill()
            .clipped()
            
            Text(task.name)
            Text(task.taskId)
            Text(task.description)
            Text(task.location)
            Text(task.status)
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
