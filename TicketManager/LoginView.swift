//
//  LoginView.swift
//  TicketManager
//
//  Created by Etudiant on 23/10/2019.
//  Copyright © 2019 ESGI. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    
    @State var login: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView{
        VStack{
            Text("Task Manager").size
            TextField("Login", text: $login).padding(.horizontal,75)
            TextField("Password", text: $password).padding(.horizontal,75)
            NavigationLink(destination: TaskListView()) {
                Text("Login").foregroundColor(.white)
                                   .padding(10)
                                   .background(Color.blue)
                                   .cornerRadius(10)
            }.padding()
            /*Button(action: {
                //do none
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(10)
            }*/
        }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
