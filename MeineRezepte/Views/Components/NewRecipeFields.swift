//
//  NewRecipeFields.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 04.07.24.
//

import SwiftUI

struct NewRecipeFields: View {
    
    @Binding var recipeName:String
    @Binding var recipeDescription:String
    @Binding var errorMessage:ErrorType
    
    var body: some View {
       
            TextField("Name", text: $recipeName)
                .fieldsErrorModifier( errorMessage: errorMessage)
                .onChange(of: recipeName) {
                    errorMessage = .none
                }
            
            TextEditor(text: $recipeDescription)
        
    }
}

#Preview {
    NewRecipeFields(recipeName: .constant(""), recipeDescription: .constant(""), errorMessage: .constant(.incorrectUsername))
}
