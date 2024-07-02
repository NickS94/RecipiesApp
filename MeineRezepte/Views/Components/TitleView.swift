//
//  TitleView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack{
            Text("Meine Rezepte")
                .font(.system(size: 48))
                .italic()
            
            Image(.apfelkuchen)
                .resizable()
                .frame(width: 120,height: 120)
                .clipShape(Circle())
                .shadow(radius: 10)
            
        }
    }
}

#Preview {
    TitleView()
}
