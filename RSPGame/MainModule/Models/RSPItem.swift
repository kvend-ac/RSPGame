//
//  RSPItem.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//

<<<<<<< HEAD
import UIKit

struct RSPItem {
    let itemChoice: Resource.GameChoice
    let title: String
    let image: UIImage
    let backgroundColor: UIColor
    
    init(_ itemChoice: Resource.GameChoice) {
        self.itemChoice = itemChoice
        self.title = itemChoice.rawValue
        switch itemChoice {
        case .rock:
            image = .rock
            backgroundColor = .projectYellow
        case .paper:
            image = .paper
            backgroundColor = .projectGreen
        case .scissors:
            image = .scissors
            backgroundColor = .projectOrange
        }
        
    }
}
=======
import Foundation
>>>>>>> 6516d439901935bd0a53f9fcf5bf96be72139a15
