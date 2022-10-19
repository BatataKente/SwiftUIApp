//
//  Phrase.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import Foundation

struct Phrase: Codable, Identifiable {
    
    var id = UUID()
    
    let image: String?
    let description: String?
    let date: String?
}
