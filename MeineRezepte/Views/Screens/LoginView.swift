//
//  LoginView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var username: String
    @Binding var password: String
    @Binding var errorMessageUserName: ErrorType
    @Binding var errorMessagePassword: ErrorType
    
    
    @Binding var isLoggedIn :Bool
    @Binding var recipies:[Recipe]
    @Binding var ingredientsList:[String]
    @Binding var showSheet:Bool
    
    
    var body: some View {
        ZStack{
            BackgroundImage()

            VStack(){
                TitleView()
                
                LoginInputFields(username: $username, password: $password, errorMessageUserName: $errorMessageUserName,errorMessagePassword:$errorMessagePassword)
                    .frame(width: 390)
                
                LoginButton(errorMessageUserName: $errorMessageUserName,errorMessagePassword: $errorMessagePassword, username: $username, password: $password, isLoggedIn: $isLoggedIn)
    
            }
            .fullScreenCover(isPresented: $isLoggedIn) {
                TabViewsRecipies(recipies: $recipies, ingredientsList: $ingredientsList, showSheet: $showSheet, isLoggedIn: $isLoggedIn)
            }
           
        }
    }
}

#Preview {
    LoginView(username: .constant(""), password: .constant(""), errorMessageUserName: .constant(.emptyUsername), errorMessagePassword: .constant(.emptyPassword), isLoggedIn: .constant(false), recipies: .constant(.init()), ingredientsList: .constant(.init()), showSheet: .constant(false))
}
