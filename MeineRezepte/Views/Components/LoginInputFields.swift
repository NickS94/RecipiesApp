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
    @Binding var errorMessage : ErrorType?
    var body: some View {
        
      VStack(alignment: .leading) {
      
          
        TextField("Benutzername", text: $username)
          .padding()
          .background(Color.white.opacity(0.5))
          .cornerRadius(5)
        
        if let error = errorMessage, error == .emptyUsername || error == .incorrectUsername {
          Text(error.rawValue)
            .foregroundColor(.red)
            .font(.caption)
            .padding(.leading)
        }
        
          
        SecureField("Passwort", text: $password)
          .padding()
          .background(Color.white.opacity(0.5))
          .cornerRadius(5)
       
        if let error = errorMessage, error == .emptyPassword || error == .incorrectPassword {
          Text(error.rawValue)
            .foregroundColor(.red)
            .font(.caption)
            .padding(.leading)
        }
      }
      .padding()
    }
  }
  #Preview {
      LoginInputFields(username: .constant(""), password: .constant(""), errorMessage: .constant(.none))
  }
