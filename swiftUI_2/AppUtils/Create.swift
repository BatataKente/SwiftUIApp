//
//  Create.swift
//  swiftUI_2
//
//  Created by Josicleison on 18/10/22.
//

import SwiftUI

struct Create {
    
    static func text(_ text: String, textColor: Color = .white,
                     size: CGFloat = 16,
                     weight: Font.Weight = .medium,
                     design: Font.Design? = nil) -> Text {
        
        Text(text)
            .font(.system(size: size,
                          weight: weight,
                          design: design))
            .foregroundColor(textColor)
    }
    
    static func image(_ image: String, imageColor: Color = .white,
                      width: CGFloat? = nil, height: CGFloat? = nil) -> some View {
        
        Image(systemName: image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .foregroundColor(imageColor)
    }
    
    static func stack(spacing: CGFloat = 0,
                      topText: Text? = nil,
                      image: some View,
                      bottomText: Text) -> some View {
        
        VStack(spacing: spacing) {
            
            if let text = topText {text}
            image
            bottomText
        }
    }
}
