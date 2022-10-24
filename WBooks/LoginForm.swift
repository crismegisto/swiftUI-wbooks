//
//  LoginForm.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct LoginForm: View {
    @State var userName: String = ""
    @State var password: String = ""
    
    func signIn() {
        print(self.userName, self.password)
    }
    
    var body: some View {
        VStack {
            TextField("Nombre de usuario", text: $userName)
                .modifier(TextFieldModifier())
                
            SecureField("Contraseña", text: $password)
                .modifier(TextFieldModifier())
                .padding(.bottom, 40)
                        
            Button(action: signIn) {
                CustomButton(buttonName: "Iniciar Sesión")
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.5)
            )
            .background(Color.white.cornerRadius(10))
            .padding(.horizontal, 10)
            .padding()
    }
}
