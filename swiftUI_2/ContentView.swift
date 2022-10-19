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
                            
                            Text("Go")
                                .foregroundColor(.white)
                                .font(.system(size: 25, weight: .bold))
                            
                            Create.image("chevron.right", height: 20)
                        }.padding(.trailing, 20)
                    }
                }.preferredColorScheme(.dark)
            }
        }.accentColor(.white)
    }
}
