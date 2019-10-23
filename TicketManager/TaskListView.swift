//
//  TaskListView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct TaskListView: View {

    @State var taskList = "Themes.listModel"
    var body: some View {
        VStack{
            Text("Welcome to Your task Manager")
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
