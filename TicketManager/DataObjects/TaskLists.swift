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
    
    init (){
        openTaskList += [
            Task(  taskId: "1", name: "charge fail", description: "the charge failed", location: "open office", status: "open", selectedUserType: "0"),
        Task(  taskId: "2", name: "change directory failed", description: "the charge failed", location: "open office", status: "open", selectedUserType: "0"),
        Task(  taskId: "3", name: "Logn story ", description: "the charge failed", location: "open office", status: "open", selectedUserType: "0"),
        Task(  taskId: "4", name: "charge fail", description: "the charge failed", location: "open office", status: "open", selectedUserType: "0")]


        pendingTaskList = [
        Task(  taskId: "5", name: "Internet issues", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
        Task(  taskId: "6", name: "wrong document deleted", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0"),
        Task(  taskId: "9", name: "charge fail", description: "the charge failed", location: "open office", status: "pending", selectedUserType: "0")]
        
        closedTaskList = [
        Task(  taskId: "7", name: "slow interface", description: "the charge failed", location: "open office", status: "closed", selectedUserType: "0"),
        Task(  taskId: "8", name: "viruses loading up", description: "the charge failed", location: "open office", status: "closed", selectedUserType: "0")]
        
    }
}
