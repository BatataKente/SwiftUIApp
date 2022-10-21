//
//  Jokenpo.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import SwiftUI

struct JokenpoView: View {
    
    @State var score: (victory: Int, draw: Int, lose: Int) = (victory: 0, draw: 0, lose: 0)
    @State var cpuChose: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Assets.Colors.pink.ignoresSafeArea()
            
            VStack {
                
                ScrollView(.horizontal) {

                    HStack {

                        jokenpo(Assets.Images.stone)
                        jokenpo(Assets.Images.paper)
                        jokenpo(Assets.Images.scissors)
                        jokenpo(Assets.Images.lizard)
                        jokenpo(Assets.Images.spok)
                    }
                }
                
                Image(Assets.Images.versus)
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 128)
                
                Create.image(String(cpuChose), height: 128)
                
                Spacer()
                
                HStack {

                    Create.text("Victory: \(score.victory) - Draw: \(score.draw) - Lose: \(score.lose)",
                                textColor: Assets.Colors.reverseDark,
                                size: 25)
                }
            }.navigationTitle("Jokenpo")
        }
    }
    
    private func jokenpo(_ image: String) -> Button<some View> {
        
        Button {
            
            let cpuChose = Int.random(in: 0...4)
            let playerChose = Int(image)
            
            if playerChose == 0 && cpuChose == 2 || playerChose == 0 && cpuChose == 3 ||
               playerChose == 1 && cpuChose == 0 || playerChose == 1 && cpuChose == 4 ||
               playerChose == 2 && cpuChose == 1 || playerChose == 2 && cpuChose == 3 ||
               playerChose == 3 && cpuChose == 1 || playerChose == 3 && cpuChose == 4 ||
               playerChose == 4 && cpuChose == 0 || playerChose == 4 && cpuChose == 2
            {
                score.victory += 1
            }
            else if playerChose == cpuChose
            {
                score.draw += 1
            }
            else
            {
                score.lose += 1
            }
            
            self.cpuChose = cpuChose
        }
        label: {
            
            Create.image(image)
                .frame(width: 128, height: 128)
        }
    }
}
