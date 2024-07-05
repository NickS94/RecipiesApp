//
//  BackgroundImage.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        Image(.apfelkuchen)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
            .blur(radius: 15)
            
    }
}

#Preview {
   BackgroundImage()
}
