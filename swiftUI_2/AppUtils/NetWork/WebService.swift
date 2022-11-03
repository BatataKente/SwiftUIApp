//
//  WebService.swift
//  swiftUI_2
//
//  Created by Josicleison Elves on 12/08/1401 AP.
//

import Foundation

struct WebService {
    
    static func call(from url: String) async -> Data? {
        
        guard let url = URL(string: "\(url)f1a110d5") else {print("ERROR: Wrong url"); return nil}
        
        do {

            let (data, response) = try await URLSession.shared.data(from: url)
            print("RESPONSE:", response)

            return data
        }
        catch {print("ERROR: \(error)"); return nil}
    }
    
    static func decode<T: Codable>(_ what: T.Type, from data: Data) -> T? {
        
        do {
            
            return try JSONDecoder().decode(what.self, from: data)
        }
        catch {print("ERROR: \(error)"); return nil}
    }
}
