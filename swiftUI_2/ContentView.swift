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
                
                LinearGradient(gradient: Gradient(colors: [Assets.Colors.blue, .blue]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: WheaterView()) {
                        
                        HStack {
                            
                            Create.text("Go", textColor: Assets.Colors.reverseDark,
                                        size: 25, weight: .bold)
                            
                            Create.systemImage(Assets.Images.back,
                                               imageColor: Assets.Colors.reverseDark,
                                               height: 20)
                        }.padding(.trailing, 20)
                    }
                }
            }
        }.accentColor(Assets.Colors.reverseDark)
    }
}
