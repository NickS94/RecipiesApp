//
//  ImagePicker.swift
//  MeineRezepte
//
//  Created by Nikos Stauropoulos on 04.07.24.
//

import SwiftUI

struct ImagePicker: View {
    
    @Binding var imageSelection :FoodImage
    
    var body: some View {
        Picker("Bild für das Gericht", selection: $imageSelection) {
            
            ForEach(FoodImage.allCases, id:\ .self){ image in
                
                if image == .none{
                    Image(systemName: "fork.knife")
                        .font(.title)
                        .foregroundStyle(.blue)
                        .frame(width:60,height: 60)
                        .background(.gray.opacity(0.3))
                        .clipShape(Circle())
                }else{
                    Image(image.rawValue)
                        .resizable()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                    
                }
                
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ImagePicker(imageSelection: .constant(.apfelkuchen))
}
