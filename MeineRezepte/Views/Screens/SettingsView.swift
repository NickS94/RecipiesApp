//
//  SettingsView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 05.07.24.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var isLoggedIn :Bool
    
    
    var body: some View {
        
        
            Form{
                Section("Info") {
                  
                    SettingsTexts()
                    

                }
               
                LogoutButton(isLoggedIn: $isLoggedIn)
                
            }
            
        }
    }


#Preview {
    SettingsView(isLoggedIn: .constant(false))
}
