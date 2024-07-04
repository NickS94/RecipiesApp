//
//  RecipeDetailView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 02.07.24.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @Binding var recipe:Recipe
    
    @Binding var ingredientsList:[String]

    var body: some View {
        
        ScrollView{
            
            VStack{
                
                DetailsTitle(recipe: recipe)

                IngredientsList(recipe: recipe, ingredientsList: $ingredientsList)
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(
                Image(recipe.foodImage.rawValue)
                    .resizable()
                    .blur(radius: 10.0)
                
            )
            .navigationTitle(recipe.title)
            .toolbar{
                ToolbarItem {
                    Button(action: {
                        recipe.isFavorite.toggle()
                    }, label: {
                        Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                    })
                }
            }
            
        }
    }
}

#Preview {
    RecipeDetailView(recipe: .constant(.init(title:"Apple pie", description: "Ein leckerer Apfelkuchen für gemütliche Nachmittage.", ingredients: ["Äpfel", "Mehl", "Zucker", "Eier", "Zimt"], foodImage: .apfelkuchen, date: .now)), ingredientsList: .constant(["","",""]))
}
