//
//  View_1ViewModel.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import Foundation

class View_1ViewModel: ObservableObject {
    
    @Published var articles: [Article] = []
    
    func refresh() {
        
        NetWork.call(from: "https://newsapi.org/v2/top-headlines?country=US&apiKey=eda6154a62744b7bbad849130a7f7b6f") {[weak self] data in
            
            guard let data = data else {return}
            guard let articles = NetWork.decode(News.self, from: data)?.articles else {return}
            
            self?.articles = articles
        }
    }
}
