//
//  LoginView.swift
//  VKAppSwiftUI
//
//  Created by Denis Kuzmin on 10.09.2021.
//

import SwiftUI

struct LoginView: View {
    @State var login: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            Text("Login:")
            TextField("Login", text: $login)
            Spacer()
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
