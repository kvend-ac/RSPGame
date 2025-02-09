//
//  RSPItem.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//


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
