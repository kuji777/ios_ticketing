//
//  TaskListView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct Task {
    let taskId: String
    let name: String
    let description: String
    let location: String
    let status: String
    let selectedUserType: String
}

struct TaskListView: View {

    @State var taskList = "Themes.listModel"
    @State var selection: Int? = nil
    
    var body: some View {
            VStack{
                HStack{
                Text("Welcome to Your task Manager")
                
                NavigationLink(destination: TaskEditView(), tag: 1, selection: $selection) {
                    Button(action: {
                        print("login tapped")
                        self.selection = 1
                    }) {
                        HStack{
                            Image("baseline_add_circle_black_48dp").resizable().frame(width:25.0, height: 25.0).colorMultiply(Color.blue)
                            Text("Add task").foregroundColor(Color.blue)
                        }
                        .background(Color.white)
                    }
                    .accentColor(Color.black)
                    .padding()
                    .background(Color(UIColor.darkGray))
                    .cornerRadius(4.0)
                    .padding(Edge.Set.vertical, 20)
                }
                    List(taskList, id: \.name){ task in
                        HStack {
                            Text(task.name)
                            Text(task.status).foregroundColor(Color.white).background(Color.green)
                        }
                
                }
                
                
                /*List(taskList.items, action: taskList.selectItem){
                    item in
                    Image(item.image)
                    VStack(alignment: .leading){
                        Text(item.title)
                        Text(item.subtitle).color(.gray)
                    }
                }*/
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
