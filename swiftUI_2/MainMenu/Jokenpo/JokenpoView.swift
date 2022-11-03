//
//  Jokenpo.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import SwiftUI

struct JokenpoView: View {
    
    @StateObject private var jokenpoViewModel = JokenpoViewModel()
    
    var body: some View {
        
        ZStack {
            
            Assets.Colors.pink.ignoresSafeArea()
            
            VStack {
                    
                ScrollView(.horizontal) {

                    HStack {

                        jokenpoViewModel.button(Assets.Images.stone)
                        jokenpoViewModel.button(Assets.Images.paper)
                        jokenpoViewModel.button(Assets.Images.scissors)
                        jokenpoViewModel.button(Assets.Images.lizard)
                        jokenpoViewModel.button(Assets.Images.spok)
                    }
                }
                
                Image(Assets.Images.versus)
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 128)
                
                Create.image(String(jokenpoViewModel.cpuChose), height: 128)
                
                ResultView(jokenpoViewModel.result)
                
                HStack {

                    Create.text("Victory: \(jokenpoViewModel.score.victory) - Draw: \(jokenpoViewModel.score.draw) - Lose: \(jokenpoViewModel.score.lose)",
                                textColor: Assets.Colors.reverseDark,
                                size: 25)
                }
            }.navigationTitle("Jokenpo")
        }
    }
}
