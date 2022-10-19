//
//  ContentView.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import SwiftUI

struct View_1: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .trailing) {
                
                LinearGradient(gradient: Gradient(colors: [Assets.Colors.blue, .blue]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    
                    navigate(to: View_3(), "Go View_3")
                    navigate(to: View_2(), "Go View_2")
                }
            }
        }.accentColor(Assets.Colors.reverseDark)
    }
    
    private func navigate(to view: some View,_ title: String) -> some View {
        
        NavigationLink(destination: view) {
            
            HStack {
                
                Create.text(title, textColor: Assets.Colors.reverseDark,
                            size: 25, weight: .bold)
                
                Create.systemImage(Assets.Images.back,
                                   imageColor: Assets.Colors.reverseDark,
                                   height: 20)
            }.padding(.trailing, 20)
        }.navigationBarTitle("View_1")
    }
}
