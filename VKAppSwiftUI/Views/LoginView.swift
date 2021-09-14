//
//  LoginView.swift
//  VKAppSwiftUI
//
//  Created by Denis Kuzmin on 10.09.2021.
//

import SwiftUI

struct LoginView: View {
    @State var login: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Image("VK_Logo")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack {
                    Text("Login:")
                        .frame(minWidth: 100, alignment: .leading)
                    TextField("Login", text: $login)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack {
                    Text("Password:")
                        .frame(minWidth: 100, alignment: .leading)
                    SecureField("Password", text: $password)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                Button("Sign In", action: {
                    
                })
                    .disabled(login.isEmpty || password.isEmpty)
                    .font(.largeTitle)
                Spacer()
            }
        }
        
        
        
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
