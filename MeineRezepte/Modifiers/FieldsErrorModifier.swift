//
//  FieldsErrorModifier.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 01.07.24.
//

import Foundation
import SwiftUI




struct FieldsErrorModifier:ViewModifier{
    
    
    let errorMessage:ErrorType
    
    func body(content: Content) -> some View {
        
        
        content
        switch errorMessage {
            
        case .emptyUsername:
            
            Text("\(errorMessage.rawValue)")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        case .emptyPassword:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        case .incorrectUsername:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        case .incorrectPassword:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        
        case .emptyRecipeName:
            
            Text("\(errorMessage.rawValue)")
                .font(.system(size: 10))
                .foregroundColor(.red)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        case .none:
            Text("")
        
        }
        
    }
    
    
}

extension View{
    func fieldsErrorModifier(errorMessage:ErrorType) -> some View{
        modifier(FieldsErrorModifier(errorMessage: errorMessage))
    }
}
