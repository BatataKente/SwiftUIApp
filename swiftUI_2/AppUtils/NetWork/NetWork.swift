//
//  NetWork.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import Foundation

struct NetWork {
    
    static func call(from url: String, escape: @escaping (Data?) -> ()) {
        
        guard let url = URL(string: url) else {return}
        URLSession.shared.dataTask(with: url) {data, response, error in
            
            if let error = error {print("ERROR:",error); return}
            
            if let response = response,
               let data = data {
                
                print("RESPONSE:",response)
                
                DispatchQueue.main.async {
                    
                    escape(data)
                }
            }
        }.resume()
    }
    
    static func decode<T: Codable>(_ what: T.Type, from data: Data) -> T? {
        
        do {let data = try JSONDecoder().decode(what.self, from: data)
            
            return data
        }
        catch {
            
            print("ERROR:",error)
            return nil
        }
    }
}
