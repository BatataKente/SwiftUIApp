//
//  ContentView.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .trailing) {
                
                Color.blue.ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: WheaterView()) {
                        
                        HStack {
                            
                            Create.text("Go", textColor: Colors.reverseDark,
                                        size: 25, weight: .bold)
                            
                            Create.image(Images.back, imageColor: Colors.reverseDark,
                                         height: 20)
                        }.padding(.trailing, 20)
                    }
                }
            }
        }.accentColor(Colors.reverseDark)
    }
}
