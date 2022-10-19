//
//  ContentView.swift
//  swiftUI_2
//
//  Created by Josicleison on 18/10/22.
//

import SwiftUI

struct WheaterView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Assets.Colors.blue, .blue]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Create.text("Afeganistao, Rio de Janeiro",
                                size: 32, design: .default)
                        .padding()
                    
                    Create.stack(spacing: 8,
                                 image: Create.image(Assets.Images.cloudSun,
                                                     width: 180, height: 180),
                                 bottomText: Create.text("76°", size: 70))
                        .padding(.bottom, 40)
                    
                    HStack(spacing: 20) {
                        
                        Create.stack(topText: Create.text("TUE"),
                                     image: Create.image(Assets.Images.cloudSun, height: 40),
                                     bottomText: Create.text("74°", size: 28))
                        Create.stack(topText: Create.text("WED"),
                                     image: Create.image(Assets.Images.sunMax, height: 40),
                                     bottomText: Create.text("88°", size: 28))
                        Create.stack(topText: Create.text("THU"),
                                     image: Create.image(Assets.Images.windSnow, height: 40),
                                     bottomText: Create.text("55°", size: 28))
                        Create.stack(topText: Create.text("FRI"),
                                     image: Create.image(Assets.Images.sunset, height: 40),
                                     bottomText: Create.text("60°", size: 28))
                        Create.stack(topText: Create.text("SAT"),
                                     image: Create.image(Assets.Images.snow, height: 40),
                                     bottomText: Create.text("25°", size: 28))
                    }
                    
                    Spacer()
                    
                    Button {

                        print("Toma!")

                    }
                    label: {
                        
                        Create.text("Change Day Time", textColor: .blue,
                                    size: 20, weight: .black, design: .default)
                            .frame(width: 200, height: 50)
                            .background(.yellow)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        WheaterView()
    }
}
