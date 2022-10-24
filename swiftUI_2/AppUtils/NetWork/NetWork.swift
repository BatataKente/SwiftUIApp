//
//  NetWork.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import Foundation

struct NetWork {
    
//    static func call(from url: String) async -> Data? {
//
//        guard let url = URL(string: url) else {return nil}
//
//        async let (data, response) = URLSession.shared.data(from: url)
//
//        do {
//
//            try await print("RESPONSE", response)
//            return try await data
//        }
//        catch {
//
//            print("ERROR", error)
//            return nil
//        }
//    }
//
//    static func decode<T: Codable>(_ model: T.Type, from data: Data) async -> T? {
//
//        do {
//
//            let news = try JSONDecoder().decode(model.self, from: data)
//            return news
//        }
//        catch {
//
//            print("ERROR", error)
//            return nil
//        }
//    }
    
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
