//
//  LoginInputFields.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct LoginInputFields: View {
    
    @Binding var username : String
    @Binding var password : String
    @Binding var errorMessageUserName : ErrorType
    @Binding var errorMessagePassword : ErrorType
    var body: some View {
        
      VStack(alignment: .leading) {
      
          
        TextField("Benutzername", text: $username)
          .clipShape(RoundedRectangle(cornerRadius: 12))
          .fieldsErrorModifier(errorMessage: errorMessageUserName)
          .textFieldStyle(.roundedBorder)
          .padding(5)
          .onChange(of: username){
              errorMessageUserName = .none
          }
        
          
        SecureField("Passwort", text: $password)
          .clipShape(RoundedRectangle(cornerRadius: 12))
          .fieldsErrorModifier(errorMessage: errorMessagePassword)
          .textFieldStyle(.roundedBorder)
          .padding(5)
          .onChange(of: password){
              errorMessagePassword = .none
          }
   
      }
      .padding()
    }
  }
  #Preview {
      LoginInputFields(username: .constant(""), password: .constant(""), errorMessageUserName:  .constant(.emptyUsername),errorMessagePassword:.constant(.emptyPassword))
  }
