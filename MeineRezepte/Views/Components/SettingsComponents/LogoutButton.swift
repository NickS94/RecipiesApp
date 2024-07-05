//
//  LogoutButton.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 05.07.24.
//

import SwiftUI

struct LogoutButton: View {
    
    @Binding var isLoggedIn :Bool
    
    var body: some View {
        
        Button("Ausloggen") {
            isLoggedIn = false
        }
        .foregroundStyle(.white)
        .frame(width: 350,height: 50)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}

#Preview {
    LogoutButton(isLoggedIn: .constant(false))
}
