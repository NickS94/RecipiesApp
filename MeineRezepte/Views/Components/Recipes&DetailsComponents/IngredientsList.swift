//
//  IngredientsList.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct IngredientsList: View {
    
    @State var recipe:Recipe = .init(title:"Apple pie", description: "Ein leckerer Apfelkuchen für gemütliche Nachmittage.", ingredients: ["Äpfel", "Mehl", "Zucker", "Eier", "Zimt"], foodImage: .apfelkuchen, date: .now)
    
    @Binding var ingredientsList:[String]
    
    
    var body: some View {
        ForEach(recipe.ingredients, id: \.self){ ingredient in
            
            HStack{
                
                Text("\(ingredient)")
                
                Image(systemName: ingredientsList.contains{$0 == ingredient} ? "minus.circle.fill" : "plus.circle")
                    .font(.system(size: 20))
                    .foregroundStyle(.blue)
                    .onTapGesture {
                        addOrRemoveIngredient(ingredient: ingredient)
                    }
            }
            .padding(10)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            
        }
    }
    
    
    private func addOrRemoveIngredient(ingredient:String){
        
        if !self.ingredientsList.contains(where: { $0 == ingredient }) {
            ingredientsList.append(ingredient)
        }else{
            ingredientsList.removeAll {
                $0 == ingredient
            }
        }
        
    }
}

#Preview {
    IngredientsList( ingredientsList: .constant(["","",""]))
}
