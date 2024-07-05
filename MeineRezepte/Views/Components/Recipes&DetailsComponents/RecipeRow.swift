//
//  RecipeRow.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 02.07.24.
//

import SwiftUI

struct RecipeRow: View {
    
    var recipe:Recipe = .init(title: "Apfelkuchen", description: "Ein leckerer Apfelkuchen für gemütliche Nachmittage.", ingredients: ["Äpfel", "Mehl", "Zucker", "Eier", "Zimt"], foodImage: .apfelkuchen, date:  Date(timeIntervalSince1970: 100000),isFavorite: false)
    
   
    
    var body: some View {
        
        HStack{
            ZStack{
                Image(recipe.foodImage.rawValue)
                    .resizable()
                    .frame(width: 90,height: 85)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                if recipe.isFavorite{
                    Image(systemName: "suit.heart.fill")
                        .font(.system(size: 20))
                        .foregroundStyle(.red)
                        .frame(width: 30,height: 30)
                        .background(.white)
                        .clipShape(Circle())
                        .offset(x: -25.0,y: -20)
                }
            }
           
            VStack(alignment:.leading,spacing: 5){
                Text(recipe.title)
                    .font(.title3)
                    .bold()
                Text(recipe.description)
                    .font(.system(size: 14))
                    .lineLimit(3)
                
                Text(recipe.date.string)
                    .font(.system(size: 12))
                    .fontDesign(.serif)
                    .foregroundStyle(.gray)
                    
                
                    
            }
        }
    }
}

#Preview {
    RecipeRow( )
}
