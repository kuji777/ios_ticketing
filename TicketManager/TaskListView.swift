//
//  TaskListView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskListView: View {

    @EnvironmentObject var tasklists : TaskLists

    @State var selection: Int? = nil
    @State private var SelectedTabIndex = 0
    
    
    var body: some View {
        NavigationView{
                VStack{
                    HStack{
                        Text("Welcome to Your task Manager")
                        
                        NavigationLink(destination: TaskEditView(), tag: 1, selection: $selection) {
                            Button(action: {
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
                    SpecificTaskView(tasks: selectedTasks)
        
                    /*List(taskList.items, action: taskList.selectItem){
                        item in
                        Image(item.image)
                        VStack(alignment: .leading){
                            Text(item.title)
                            Text(item.subtitle).color(.gray)
                        }
                    }*/
            }.navigationBarTitle("List")
        }
    }
    
    var selectedTasks: Binding<[Task]> {
        if SelectedTabIndex == 0 {
            return $tasklists.openTaskList
        } else if  SelectedTabIndex == 1 {
            return $tasklists.pendingTaskList
        } else {
            return $tasklists.closedTaskList
        }
    }

}


struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
