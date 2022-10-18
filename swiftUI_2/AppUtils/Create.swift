//
//  Create.swift
//  swiftUI_2
//
//  Created by Josicleison on 18/10/22.
//

import SwiftUI

struct Create {
    
    static func stack(spacing: CGFloat = 0,
                      _ day: String? = nil,
                      image: String, imageWidth: CGFloat? = nil, imageHeight: CGFloat = 40,
                      temperature: Int, temperatureSize: CGFloat = 28) -> some View {

        VStack(spacing: spacing) {

            if let day = day {

                Text(day)
                    .font(.system(size: 16,
                                  weight: .medium))
                    .foregroundColor(.white)
            }

            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth, height: imageHeight)

            Text("\(temperature)°")
                .font(.system(size: temperatureSize,
                              weight: .medium))
                .foregroundColor(.white)
        }
    }
}
