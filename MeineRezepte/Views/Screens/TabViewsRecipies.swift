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
    @State var showSheet  = false
 
    var body: some View {
        TabView{
            
            RecipesView(recipes: $recipies, ingredientsList: $ingredientsList,showSheet: $showSheet)
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Rezepte")
                }
                .badge(recipies.filter{$0.isFavorite}.count)
            
            ShoppingListView(ingredientsList: $ingredientsList)
                .tabItem {
                    Image(systemName: "bag")
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
