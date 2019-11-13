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

    @State var openTaskList = [
        Task(  taskId: "1", name: "charge fail", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
    Task(  taskId: "2", name: "change directory failed", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
    Task(  taskId: "3", name: "Logn story ", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
    Task(  taskId: "4", name: "charge fail", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0")]
    
    @State var pendingTaskList = [
    Task(  taskId: "3", name: "Logn story ", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
    Task(  taskId: "4", name: "charge fail", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0")]
    
    @State var closedTaskList = [
    Task(  taskId: "3", name: "Logn story ", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
    Task(  taskId: "4", name: "charge fail", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0")]
    
    @State var selection: Int? = nil
    @State private var SelectedTabIndex = 0
    
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
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                }

                VStack(alignment: .leading) {
                    Picker(selection: $SelectedTabIndex, label: Text("tab")) {
                        Text("opened").tag(0)
                        Text("pending").tag(1)
                        Text("closed").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                if SelectedTabIndex == 0 {
                     List(openTaskList, id: \.name ){ task in
                        NavigationLink(destination: TaskDetailsView(taskId: task.taskId)){
                            HStack {
                                Text(task.name)
                                Text(task.status).foregroundColor(Color.white).background(Color.green)
                            }
                        }
                    }
                } else if SelectedTabIndex == 1 {
                    List(pendingTaskList, id: \.name ){ task in
                        HStack {
                            Text(task.name)
                            Text(task.status).foregroundColor(Color.white).background(Color.green)
                        }
                    }
                } else {
                     List(closedTaskList, id: \.name ){ task in
                        HStack {
                            Text(task.name)
                            Text(task.status).foregroundColor(Color.white).background(Color.green)
                            
                        }
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


struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
