//
//  ResultView.swift
//  swiftUI_2
//
//  Created by Josicleison on 21/10/22.
//

import SwiftUI

struct ResultView: View {
    
    var text: String
    
    init(_ text: String) {
        
        self.text = text
    }
    
    var body: some View {
        
        Spacer()
        
        Create.text(text,
                    textColor: Assets.Colors.reverseDark,
                    size: 35,
                    weight: .bold)
        
        Spacer()
    }
}
