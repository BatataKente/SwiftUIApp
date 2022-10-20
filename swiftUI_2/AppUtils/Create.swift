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
    
    static func dataImage(_ image: UIImage, background: Color? = nil,
                          width: CGFloat? = nil, height: CGFloat? = nil) -> some View {
        
        Image(uiImage: image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .background(background)
    }
    
    static func image(_ image: String, background: Color? = nil,
                      width: CGFloat? = nil, height: CGFloat? = nil) -> some View {
        
        Image(image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .background(background)
    }
    
    static func systemImage(_ image: String, imageColor: Color = .white,
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

struct DataImage: View {
    
    let url: String
    
    @State var data: Data?
    
    var body: some View {
        
        if let data = data,
           let image = UIImage(data: data){
            
            Create.dataImage(image, background: .gray, width: 130, height: 70)
        }
        else {
            
            Create.image(Assets.Images.donRamon, width: 130, height: 70)
                .onAppear {
                    
                    NetWork.call(from: url) {data in
                        
                        self.data = data
                    }
            }
        }
    }
}
