//
//  SettingsTexts.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 05.07.24.
//

import SwiftUI

struct SettingsTexts: View {
    var body: some View {
        
        Text("Projectwoche 1 - SwiftUI")
        Link("syntax-institut.de", destination: URL(string: "https://www.syntax-institut.de")!)
        Text("© Syntax Institut, 2024")
            .font(.system(size: 16))
            .fontDesign(.serif)
        
    }
}

#Preview {
    SettingsTexts()
}
