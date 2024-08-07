//
//  RecipesView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import SwiftUI

struct RecipesView: View {
    
    
    @Binding var recipes : [Recipe]
    
    @Binding var ingredientsList:[String]
    
    @Binding var showSheet : Bool
    
    var body: some View {
        NavigationStack{
            
            List{
                ForEach($recipes) { $recipe in
                    NavigationLink(destination: RecipeDetailView(recipe:$recipe, ingredientsList: $ingredientsList)){
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
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                NewRecipeView(recipes: $recipes, showSheet: $showSheet)
            }
            
        }
        
    }
}


#Preview {
    RecipesView(recipes: .constant([Recipe(title: "", description: "", ingredients: ["",""], foodImage: .apfelkuchen, date: .now)]), ingredientsList: .constant(["Spaghetti", "Hackfleisch", "Tomaten", "Zwiebeln", "Knoblauch"]), showSheet: .constant(false))
}
