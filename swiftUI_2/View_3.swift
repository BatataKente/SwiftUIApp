//
//  View_3.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import SwiftUI

struct View_3: View {
    
    let phrases = Assets.phrases
    
    var body: some View {
            
        List(phrases, id: \.id) {phrase in
            
            NavigationLink(destination: View_4(phrase)) {
                
                Cell(phrase)
                
            }.navigationBarTitle("Toma! 100")
        }
    }
}

struct Cell: View {
    
    var phrase: Phrase
    
    init(_ phrase: Phrase) {
        
        self.phrase = phrase
    }
    
    var body: some View {
        
        HStack {
            
            HStack {
                
                Create.image(phrase.image ?? Assets.Images.donRamon)
                    .frame(height: 70)
                    .cornerRadius(4)
                    .padding(.vertical, 4)
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(phrase.description ?? "")
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text(phrase.date ?? "")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
