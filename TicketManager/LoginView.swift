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
    
    @State var loggedIn: Bool = false
    
    var body: some View {
        if loggedIn {
            return AnyView ( TaskListView() )
        } else {
            return AnyView (
                VStack{
                    Text("Task Manager")
                    TextField("Login", text: $login).padding(.horizontal,75)
                    TextField("Password", text: $password).padding(.horizontal,75)
                    /*if login.isEmpty {
                        NavigationLink(destination: TaskEditView()) {
                            Text("Login").foregroundColor(.white)
                                .padding(10)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }.padding()
                    } else {
                        NavigationLink(destination: TaskEditView()) {
                            Text("Login").foregroundColor(.white)
                                .padding(10)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }.padding()
                    }*/
                    
                    Button(action: {
                        if(self.login == "root" && self.password == "pass" ){
                            self.loggedIn = true
                        } else {
                            
                        }
                     }) {
                     Text("Login")
                     .foregroundColor(.white)
                     .padding(10)
                     .background(Color.blue)
                     .cornerRadius(10)
                     }
            }
            )
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
