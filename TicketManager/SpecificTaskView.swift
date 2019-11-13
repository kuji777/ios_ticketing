//
//  SpecificTaskView.swift
//  TicketManager
//
//  Created by Etudiant on 13/11/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct SpecificTaskView: View {
    
    @Binding var tasks: [Task]
    
    var body: some View {
        List(tasks, id: \.name ){ task in
            NavigationLink(destination: TaskDetailsView()){
            HStack {
                Text(task.name)
                Text(task.status).foregroundColor(Color.white).background(Color.green)
                
            }
            }
        }
    }
}

//struct SpecificTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpecificTaskView()
//    }
//}
