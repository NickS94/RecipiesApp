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
            
        case .emptyPassword:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
            
        case .incorrectUsername:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
            
        case .incorrectPassword:
            
            Text("\(errorMessage.rawValue )")
                .font(.system(size: 14))
                .foregroundColor(.red)
                .background(.white)
            
        
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
