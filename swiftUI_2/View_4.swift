//
//  View_4.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import SwiftUI

struct View_4: View {
    
    let phrase: Phrase
    
    init(_ phrase: Phrase) {
        
        self.phrase = phrase
    }
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            Create.image(Assets.Images.donRamon, height: 150)
                .clipShape(Circle())
            
            Text(phrase.description ?? "")
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 10) {
                
                Label("\(phrase.viewCount ?? 0)", systemImage: Assets.Images.eye)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("(\(phrase.uploadDate ?? ""))")
            }
            
            Text(phrase.description ?? "")
                .font(.body)
                .padding()
            
            Spacer()
            
            if let url = URL(string: "https://en.wikipedia.org/wiki/Ram%C3%B3n_Vald%C3%A9s") {
                
                Link(destination: url) {
                    
                    Text("Toma!")
                        .bold()
                        .font(.title2)
                        .frame(width: 200, height: 50)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
