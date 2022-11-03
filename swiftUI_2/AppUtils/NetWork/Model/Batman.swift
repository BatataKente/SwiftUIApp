//
//  Batman.swift
//  swiftUI_2
//
//  Created by Josicleison Elves on 12/08/1401 AP.
//

import Foundation

struct Batman: Codable {
    
    let Response, Error, totalResults: String?
    let Search: [Search]?
}

struct Search: Codable {
    
    let Title, Year, imdbID, `Type`, Poster: String?
}
