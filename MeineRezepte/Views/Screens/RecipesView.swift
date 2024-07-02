//
//  RecipesView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct RecipesView: View {
    
    
    @Binding var recipes : [Recipe]
    
    var body: some View {
        NavigationStack{
            
            List{
                ForEach($recipes) { $recipe in
                    NavigationLink(destination: RecipeDetailView()){
                        RecipeRow(recipe: recipe)
                        
                    }
                    .swipeActions(edge:.leading){
                        Button(action: {
                            recipe.isFavorite.toggle()
                        }, label: {
                            Image(systemName: recipe.isFavorite ? "heart.slash.fill" : "heart")
                            Text (recipe.isFavorite ? "Entfernen" : "Favorisiern")
                        })
                        .tint(.yellow)
                    }
                }
                .onDelete(perform: { indexSet in
                    recipes.remove(atOffsets: indexSet)
                })
                
                
            }
            .navigationTitle("Recipes")
            .toolbar{
                ToolbarItem{
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                }
            }
        }
        
    }
}


#Preview {
    RecipesView(recipes: .constant([Recipe(title: "", description: "", ingredients: ["",""], foodImage: .apfelkuchen, date: .now)]))
}
