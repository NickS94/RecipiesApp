//
//  ContentView.swift
//  MeineRezepte
//
//  Created by Leonid Riedel on 23.02.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var username = ""
    @State var password = ""
    @State var errorMessageUserName:ErrorType = .none
    @State var errorMessagePassword:ErrorType = .none
    @State var isLoggedIn = false
    @State var recipies = AppContent.defaultRecipes
    @State var ingredientsList: [String] = []
    @State var showSheet  = false
    
    
    var body: some View {
        
        if !isLoggedIn{
            LoginView(username:$username , password: $password , errorMessageUserName: $errorMessageUserName, errorMessagePassword: $errorMessagePassword, isLoggedIn: $isLoggedIn, recipies: $recipies, ingredientsList: $ingredientsList, showSheet: $showSheet)
        }else{
            TabViewsRecipies(recipies: $recipies, ingredientsList: $ingredientsList, showSheet: $showSheet, isLoggedIn: $isLoggedIn)
        }
       
    }
}

#Preview {
    ContentView()
}
