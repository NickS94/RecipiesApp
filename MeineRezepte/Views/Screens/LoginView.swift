//
//  LoginView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var errorMessageUserName: ErrorType
    @State var errorMessagePassword: ErrorType
    @State var isLoggedIn = false
    
    
    var body: some View {
        ZStack{
            BackgroundImage()

            VStack(spacing:30){
                TitleView()
                
                LoginInputFields(username: $username, password: $password, errorMessageUserName: $errorMessageUserName,errorMessagePassword:$errorMessagePassword)
                    .frame(width: 390)
                
                LoginButton(errorMessageUserName: $errorMessageUserName,errorMessagePassword: $errorMessagePassword, username: $username, password: $password, isLoggedIn: $isLoggedIn)
    
            }
            .fullScreenCover(isPresented: $isLoggedIn) {
                TabViewsRecipies()
            }
           
        }
    }
}

#Preview {
    LoginView(errorMessageUserName: .none, errorMessagePassword: .none)
}
