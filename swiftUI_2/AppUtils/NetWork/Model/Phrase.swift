//
//  Phrase.swift
//  swiftUI_2
//
//  Created by Josicleison on 19/10/22.
//

import Foundation

struct Phrase: Codable, Identifiable {
    
    var id = UUID()
    
    let imageName: String?
    let title: String?
    let description: String?
    let viewCount: Int?
    let uploadDate: String?
    let url: URL?
    
    static let phrases: [Phrase] = [Phrase(imageName: "Don Ramon",
                                           title: "Revenge",
                                           description: "Revenge is never full; kills the soul and poisons it",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Enemies",
                                           description: "Good people must love their enemies",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Penny",
                                           description: "I may not have a penny in my pocket, but I have a smile on my face and that's worth more than all the money in the world.",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Executive",
                                           description: "I knew you were an idiot, but not on an executive level!",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Questions",
                                           description: "Only an idiot answers a question with another question. - Are you sure?",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Virtue",
                                           description: "The virtue of living well is in moral principles, my daughter.",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Honorable",
                                           description: "I am poor but honorable!",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Luck",
                                           description: "I am a man with a lot of belly, sir luck.",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Debts",
                                           description: "Debts are sacred!",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil),
                                    Phrase(imageName: "Don Ramon",
                                           title: "Work",
                                           description: "There is no such thing as bad work. The bad thing is having to work!",
                                           viewCount: nil,
                                           uploadDate: "2 September 1923 – 9 August 1988",
                                           url: nil)]
}
