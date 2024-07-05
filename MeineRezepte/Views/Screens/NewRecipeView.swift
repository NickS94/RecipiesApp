//
//  NewRecipeView.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 03.07.24.
//

import SwiftUI

struct NewRecipeView: View {
    
    @State var recipeName:String = ""
    @State var recipeDescription:String = ""
    @State var errorMessage:ErrorType = .none
    @State var imageSelection :FoodImage = .none
    @State var ingredient = ""
    @State var ingredientsList : [String] = []
    @State var showAlert = false
    @Binding var recipes :[Recipe]
    @Binding var showSheet :Bool

    var body: some View {
        
        NavigationStack{
            
            Form{
                Section("Name und beschreibung") {
                   NewRecipeFields(recipeName: $recipeName, recipeDescription: $recipeDescription,errorMessage: $errorMessage)
                }
                
                Section("Bild") {
                    
                    ImagePicker(imageSelection: $imageSelection)
                }
                
                Section("Zutaten") {
                    
                  RecipeIngredientsInsert(ingredient: $ingredient, ingredientsList: $ingredientsList)

                }
               
                
                HStack{
                    Spacer()
                    Button("Speichern") {
                        validInputsCheck()
                        
                    }
                    .alert("Bitte name eingeben", isPresented: $showAlert){
                        
                    }
                    Spacer()
                    
                } 
                
            }
            .navigationTitle("Neues Rezept")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button(action: {
                        showSheet = false
                        
                    }, label: {
                        Image(systemName: "xmark")
                    })
                }
            }
        }
        
    }
    
    private func validInputsCheck(){
        
        let newRecipe = Recipe(title: recipeName, description: recipeDescription, ingredients: ingredientsList, foodImage: imageSelection, date: .now)
        
        if recipeName.isEmpty {
            errorMessage = .emptyRecipeName
            showAlert = true
        }else {
            showAlert = false
            showSheet = false
            recipes.append(newRecipe)
 
        }
    }
}

#Preview {
    NewRecipeView( recipes: .constant(.init()), showSheet: .constant(false) )
}
