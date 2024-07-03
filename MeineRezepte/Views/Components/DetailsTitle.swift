//
//  DetailsTitle.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct DetailsTitle: View {
    
    let recipe:Recipe
    
    
    var body: some View {
        
        Image(recipe.foodImage.rawValue)
            .resizable()
            .scaledToFill()
            .frame(width: 180,height: 180)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding()
        
        Text(recipe.description)
            .font(.title2)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .padding()
    }
}

#Preview {
    DetailsTitle(recipe: Recipe(title: "Apfelkuchen",
                 description: "Ein leckerer Apfelkuchen für gemütliche Nachmittage.",
                 ingredients: ["Äpfel", "Mehl", "Zucker", "Eier", "Zimt"],
                 foodImage: .apfelkuchen,
                 date: Date(timeIntervalSince1970: 100000)))
}
