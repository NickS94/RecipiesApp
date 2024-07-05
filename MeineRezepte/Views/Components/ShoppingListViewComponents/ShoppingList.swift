//
//  ShoppingList.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 05.07.24.
//

import SwiftUI

struct ShoppingList: View {
    
    @Binding var ingredientsList:[String]
    
    var body: some View {
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

#Preview {
    ShoppingList(ingredientsList: Binding<[String]>.constant(["",""]))
}
