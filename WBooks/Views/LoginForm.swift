//
//  LoginForm.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct LoginForm: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @Binding var isValid: Bool
    
    func handleLogin() {
        if userName.isEmpty && password.isEmpty {
            isValid = true
        }
    }
    
    var body: some View {
        ZStack {
            ImageBackground()
            
            VStack {
                TextField("Nombre de usuario", text: $userName)
                    .modifier(TextFieldModifier())
                
                SecureField("Contraseña", text: $password)
                    .modifier(TextFieldModifier())
                    .padding(.bottom, 40)
                
                
                CustomButton("Iniciar Sesión", solid: true, action: handleLogin)
                    .padding(.horizontal, 40)
            }
            .padding()
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm(isValid: .constant(false))
    }
}
