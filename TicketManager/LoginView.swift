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
        
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            TextField("Login", text: $login)
            TextField("Password", text: $password)
            Button(action: {
                //do none
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
