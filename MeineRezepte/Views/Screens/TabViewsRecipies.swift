//
//  TabViewsRecipies.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 02.07.24.
//

import SwiftUI

struct TabViewsRecipies: View {

    @State var recipies = AppContent.defaultRecipes
    @State var ingredientsList: [String] = []
 
    var body: some View {
        TabView{
            
            RecipesView(recipes: $recipies, ingredientsList: $ingredientsList)
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Rezepte")
                }
                .badge(recipies.filter{$0.isFavorite}.count)
            
            ShoppingList(ingredientsList: $ingredientsList)
                .tabItem {
                    Image(systemName: "case")
                    Text("Einkaufsliste")
                }
                .badge(ingredientsList.count)
            
            Text("Last tab")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Einstellungen")
                    
                }
            
        }
    }
}

#Preview {
    TabViewsRecipies()
}
