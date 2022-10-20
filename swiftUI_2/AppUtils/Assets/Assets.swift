//
//  Assets.swift
//  swiftUI_2
//
//  Created by Josicleison on 18/10/22.
//

import SwiftUI

struct Assets {
    
    struct Colors {
        
        static let blue = Color("lightBlue")
        static let reverseDark = Color("blackWhite")
        static let pink = Color("JokenpoPink")
    }

    struct Images {
        
        static let back = "chevron.right"
        static let eye = "eye.fill"
        
        static let donRamon = "Don Ramon"
        
        static let cloudSun = "cloud.sun.fill"
        static let sunMax = "sun.max.fill"
        static let windSnow = "wind.snow"
        static let sunset = "sunset.fill"
        static let snow = "snow"
        
        static let versus = "VS"
        static let stone = "0"
        static let paper = "1"
        static let scissors = "2"
        static let lizard = "3"
        static let spok = "4"
    }
    
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

