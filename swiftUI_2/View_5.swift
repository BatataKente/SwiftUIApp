//
//  View_5.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import SwiftUI

struct View_5: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            ScrollView {
                
                ForEach(0..<100) {i in
                    
                    Text("\(i)")
                }
                
            }.background(.gray)
             .frame(height: 300)
        }
    }
}
