//
//  ContentView.swift
//  swiftUI_2
//
//  Created by Josicleison on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Assets.color, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Afeganistao, Rio de Janeiro")
                    .font(.system(size: 32,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                Create.stack(spacing: 8,
                             image: "cloud.sun.fill", imageWidth: 180, imageHeight: 180,
                             temperature: 76, temperatureSize: 70)
                    .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    
                    Create.stack("TUE", image: "cloud.sun.fill", temperature: 74)
                    Create.stack("WED", image: "sun.max.fill", temperature: 88)
                    Create.stack("THU", image: "wind.snow", temperature: 55)
                    Create.stack("FRI", image: "sunset.fill", temperature: 60)
                    Create.stack("SAT", image: "snow", temperature: 25)
                }
                
                Spacer()
                
                Button {
                    
                    print("Toma!")
                    
                }
                label: {
                    
                    Text("Change Day Time")
                        .frame(width: 200, height: 50)
                        .background(.yellow)
                        .font(.system(size: 20,
                                      weight: .black,
                                      design: .default))
                        .cornerRadius(10)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
        }.preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
