//
//  RecipeIngredientsInsert.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 04.07.24.
//

import SwiftUI

struct RecipeIngredientsInsert: View {
    
    @Binding var ingredient:String
    @Binding var ingredientsList:[String]
    
    
    
    var body: some View {
        HStack{
            TextField("Zutat", text: $ingredient)
            
            Button(action: {
                ingredientsList.append(ingredient)
                ingredient = ""
            }, label: {
                Image(systemName: "plus")
            })
            .tint(.blue)
            .disabled(ingredient.isEmpty)
            
        }
        
        List{
            ForEach(ingredientsList , id: \.self){ ingredientItem in
                Text(ingredientItem)
            }
            .onDelete(perform: { indexSet in
                ingredientsList.remove(atOffsets: indexSet)
            })
        }
    }
}

#Preview {
    RecipeIngredientsInsert(ingredient: .constant(""), ingredientsList: .constant(["",""]))
}
