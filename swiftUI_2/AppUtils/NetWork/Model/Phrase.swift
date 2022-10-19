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
    
    static let phrases: [Phrase] = [Phrase(image: Assets.Images.donRamon,
                                           description: "Revenge is never full; kills the soul and poisons it",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "Good people must love their enemies",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "I may not have a penny in my pocket, but I have a smile on my face and that's worth more than all the money in the world.",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "I knew you were an idiot, but not on an executive level!",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "Only an idiot answers a question with another question. - Are you sure?",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "The virtue of living well is in moral principles, my daughter.",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "I am poor but honorable!",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "I am a man with a lot of belly, sir luck.",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "Debts are sacred!",
                                           date: "2 September 1923 – 9 August 1988"),
                                    Phrase(image: Assets.Images.donRamon,
                                           description: "There is no such thing as bad work. The bad thing is having to work!",
                                           date: "2 September 1923 – 9 August 1988")]
}
