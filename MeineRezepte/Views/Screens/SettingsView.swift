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
        NavigationStack{
            Form{
                Section("Info") {
                    
                    Text("Projectwoche 1 - SwiftUI")
                    Link("syntax-institut.de", destination: URL(string: "https://www.syntax-institut.de")!)
                    Text("© Syntax Institut, 2024")
                        .font(.system(size: 16))
                        .fontDesign(.serif)
                    
                    
                    

                }
                Button("Ausloggen") {
                    isLoggedIn = false
                }
                .foregroundStyle(.white)
                .frame(width: 350,height: 50)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
                
            }
            
        }
    }
}

#Preview {
    SettingsView(isLoggedIn: .constant(false))
}
