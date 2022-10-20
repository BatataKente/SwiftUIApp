//
//  ContentView.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import SwiftUI

struct View_0: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .trailing) {
                
                LinearGradient(gradient: Gradient(colors: [Assets.Colors.blue, .blue]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    
                    navigate(to: NewsView())
                    navigate(to: WheaterView())
                    navigate(to: MadrugaView())
                    navigate(to: View_5())
                        .navigationTitle("Main Menu")
                }
            }
        }.accentColor(Assets.Colors.reverseDark)
    }
    
    private func navigate(to view: some View) -> some View {
        
        let title = "\(type(of: view))"
        
        return NavigationLink(destination: view) {
            
            HStack {
                
                Create.text(title, textColor: Assets.Colors.reverseDark,
                            size: 25, weight: .bold)
                
                Create.systemImage(Assets.Images.back,
                                   imageColor: Assets.Colors.reverseDark,
                                   height: 20)
            }.padding(.trailing, 20)
        }
    }
}
