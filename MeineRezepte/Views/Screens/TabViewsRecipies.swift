//
//  TabViewsRecipies.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 02.07.24.
//

import SwiftUI

struct TabViewsRecipies: View {

    
    @Binding var recipies: [Recipe]
    @Binding var ingredientsList: [String]
    @Binding var showSheet:Bool
    @Binding var isLoggedIn:Bool
 
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
            
            SettingsView(isLoggedIn: $isLoggedIn)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Einstellungen")
                    
                }
            
        }
    }
}

#Preview {
    TabViewsRecipies(recipies: .constant(.init()), ingredientsList: .constant(.init()), showSheet: .constant(false),isLoggedIn: .constant(false))
}
