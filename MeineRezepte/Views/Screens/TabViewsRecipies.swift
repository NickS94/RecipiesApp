//
//  TabViewsRecipies.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 02.07.24.
//

import SwiftUI

struct TabViewsRecipies: View {

    @State var recipies = AppContent.defaultRecipes
 
    var body: some View {
        TabView{
            
            RecipesView(recipes: $recipies)
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Rezepte")
                }
                .badge(recipies.filter{$0.isFavorite}.count)
            
            Text("Next tab")
                .tabItem {
                    Image(systemName: "case")
                    Text("Einkaufsliste")
                }
            
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
