//
//  View_5.swift
//  swiftUI_2
//
//  Created by Josicleison on 20/10/22.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewModel = View_1ViewModel()
    
    var body: some View {
            
        List(viewModel.articles, id: \.self) {article in
              
            if let url = URL(string: article.url ?? "") {
                
                Link(destination: url) {
                    
                    HStack {
                        DataImage(url: article.urlToImage ?? "")
                        
                        Create.text(article.title ?? "",
                                    textColor: Assets.Colors.reverseDark,
                                    weight: .bold)
                    }.padding(3)
                }
            }
        }.navigationTitle("News")
         .onAppear() {
            
             viewModel.refresh()
        }
    }
}
