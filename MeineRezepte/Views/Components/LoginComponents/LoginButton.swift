//
//  LoginButton.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct LoginButton: View {
    
    @Binding var errorMessageUserName :ErrorType
    @Binding var errorMessagePassword :ErrorType
    @Binding var username: String
    @Binding var password: String
    @Binding var isLoggedIn :Bool
    
    
    
    var body: some View {
        
        Button(action: {
            userNamePassWordTesting()
        }) {
            
            Label("Einloggen", systemImage: "fork.knife")
            
        }
        .buttonStyle(.borderedProminent)
        .padding(.top, 20)
    }
    
    func userNamePassWordTesting() {
        
        
        if username.isEmpty {
            errorMessageUserName = .emptyUsername
        } else if username != AppContent.correctUsername {
            errorMessageUserName = .incorrectUsername
        }
        
        
        if password.isEmpty {
            errorMessagePassword = .emptyPassword
        } else if password != AppContent.correctPassword {
            errorMessagePassword = .incorrectPassword
        }
        
        if password == AppContent.correctPassword && username == AppContent.correctUsername{
            isLoggedIn = true
        }
        
    }
}

#Preview {
    LoginButton(errorMessageUserName: .constant(.emptyUsername), errorMessagePassword: .constant(.emptyPassword),username: .constant("String"), password: .constant(""), isLoggedIn: .constant(false))
}
