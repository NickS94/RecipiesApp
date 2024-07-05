//
//  IngredientsList.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct ShoppingListView: View {
    
    @Binding var ingredientsList:[String]
    
    var body: some View {
        
        NavigationStack{
            
            Group{
                
                if ingredientsList.isEmpty{
                   EmptyListElements()
                    
                }else{
                    ShoppingList(ingredientsList: $ingredientsList)
                }
            }
            .navigationTitle("Einkaufsliste")
            .toolbar{
                ToolbarItem{
                    Button(action: {
                        ingredientsList.sort()
                        
                    }, label: {
                        Image(systemName: "arrow.down")
                    })
                }
            }
        }
    }
}

#Preview {
    ShoppingListView(ingredientsList: .constant([]))
}
