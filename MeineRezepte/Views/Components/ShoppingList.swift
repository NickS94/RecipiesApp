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
        List{
            ForEach(ingredientsList , id : \.self){ ingredient in
                
                Text("\(ingredient)")
                
            }
        }
    }
}

#Preview {
    ShoppingList(ingredientsList: .constant(["Äpfel", "Mehl", "Zucker", "Eier", "Zimt"]))
}
