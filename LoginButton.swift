//
//  LoginButton.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct LoginButton: View {
    
    @Binding var errorMessage :ErrorType?
    @Binding var username: String
    @Binding var password: String
    @Binding var isLoggedIn :Bool
    
    
    var body: some View {
      Button(action: {
        userNamePassWordTesting()
      }) {
        Text("Einloggen")
          .foregroundColor(.white)
          .frame(width: 200,height: 13)
          .padding()
          .background(Color.blue)
          .cornerRadius(20)
      }
      .padding(.top, 20)
    }
    
    private func userNamePassWordTesting() {
      errorMessage = nil
       
     
      if username.isEmpty {
        errorMessage = .emptyUsername
      } else if username != AppContent.correctUsername {
        errorMessage = .incorrectUsername
      } else if password.isEmpty {
        errorMessage = .emptyPassword
      } else if password != AppContent.correctPassword {
        errorMessage = .incorrectPassword
      } else {
   
        isLoggedIn = true
      }
    }
  }

  #Preview {
    LoginButton(errorMessage: .constant(.emptyUsername), username: .constant("String"), password: .constant(""), isLoggedIn: .constant(false))
  }
