//
//  ContentView.swift
//  MeineRezepte
//
//  Created by Leonid Riedel on 23.02.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var errorMessageUserName:ErrorType = .none
    @State var errorMessagePassword:ErrorType = .none
    
    
    var body: some View {
     
        LoginView(errorMessageUserName:errorMessageUserName , errorMessagePassword: errorMessagePassword)
        
 
    }
}

#Preview {
    ContentView()
}
