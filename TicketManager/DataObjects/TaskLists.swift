//
//  TaskLists.swift
//  TicketManager
//
//  Created by Etudiant on 15/11/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import Foundation

class TaskLists : ObservableObject{
    @Published var openTaskList : [Task] = []
    @Published var pendingTaskList : [Task] = []
    @Published var closedTaskList : [Task] = []
}
