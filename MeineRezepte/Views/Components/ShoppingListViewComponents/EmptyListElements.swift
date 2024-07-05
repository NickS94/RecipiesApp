//
//  EmptyListElements.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct EmptyListElements: View {
    var body: some View {
        
        VStack{
            Image(systemName: "bag")
                .foregroundStyle(.gray)
                .font(.system(size: 60))
                .padding()
            Text("Die einkaufsliste ist noch leer...")
                .foregroundStyle(.gray)
                .font(.system(size: 18))
        }
      
    }
}

#Preview {
    EmptyListElements()
}
