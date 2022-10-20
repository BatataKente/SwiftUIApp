//
//  Articles.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import Foundation

// MARK: - News
struct News: Codable {
    
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

// MARK: - Article
struct Article: Codable, Hashable {
    
    let source: Source?
    let author: String?
    let title: String?
    let articleDescription: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?

    enum CodingKeys: String, CodingKey {
        
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable, Hashable {
    
    let id: String?
    let name: String?
}
