//
//  IngredientsList.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct ShoppingList: View {
    
    @Binding var ingredientsList:[String]
    
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                if ingredientsList.isEmpty{
                   EmptyListElements()
                    
                }else{
                    
                    List{
                        ForEach(ingredientsList , id : \.self){ ingredient in
                            Text("\(ingredient)")
                        }
                        .onDelete(perform: { indexSet in
                            ingredientsList.remove(atOffsets: indexSet)
                        })
                    }
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
    ShoppingList(ingredientsList: .constant([]))
}
