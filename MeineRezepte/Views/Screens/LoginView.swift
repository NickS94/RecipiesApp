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
    @State var errorMessage: ErrorType?
    @State var isLoggedIn = false
    
    
    var body: some View {
        ZStack{
            BackgroundImage()

            VStack{
                TitleView()
                
                LoginInputFields(username: $username, password: $password, errorMessage: $errorMessage)
                    .frame(width: 350)
                
                LoginButton(errorMessage: $errorMessage, username: $username, password: $password, isLoggedIn: $isLoggedIn)
    
            }
            .fullScreenCover(isPresented: $isLoggedIn) {
                TabViewsRecipies()
            }
           
        }
    }
}

#Preview {
    LoginView( errorMessage:.none)
}
