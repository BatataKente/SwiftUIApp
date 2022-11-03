//
//  JokenpoViewModel.swift
//  swiftUI_2
//
//  Created by Josicleison on 21/10/22.
//

import SwiftUI

class JokenpoViewModel: ObservableObject {
    
    @Published var score: (victory: Int, draw: Int, lose: Int) = (victory: 0, draw: 0, lose: 0)
    @Published var cpuChose: Int = 0
    @Published var result: String = ""
    
    func button(_ image: String) -> Button<some View> {
        
        Button {
            
            let cpuChose = Int.random(in: 0...4)
            let playerChose = Int(image)
            
            if playerChose == 0 && cpuChose == 2 || playerChose == 0 && cpuChose == 3 ||
               playerChose == 1 && cpuChose == 0 || playerChose == 1 && cpuChose == 4 ||
               playerChose == 2 && cpuChose == 1 || playerChose == 2 && cpuChose == 3 ||
               playerChose == 3 && cpuChose == 1 || playerChose == 3 && cpuChose == 4 ||
               playerChose == 4 && cpuChose == 0 || playerChose == 4 && cpuChose == 2
            {
                self.score.victory += 1
                self.result = "You Win"
            }
            else if playerChose == cpuChose
            {
                self.score.draw += 1
                self.result = "Draw"
            }
            else
            {
                self.score.lose += 1
                self.result = "You Lose"
            }
            
            self.cpuChose = cpuChose
        }
        label: {
            
            Create.image(image)
                .frame(width: 128, height: 128)
        }
    }
}
