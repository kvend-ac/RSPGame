//
//  Resource.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//

<<<<<<< HEAD
import UIKit

enum Resource {
    
    enum GameChoice: String, CaseIterable {
        case rock = "rock"
        case paper = "paper"
        case scissors = "scissors"
    }
    
    enum GameResult {
        case win
        case loose
        case draw
    }
    
    struct Player {
        var name: String
        var choice: GameChoice?
        var score = 0
    }
    
}
=======
import Foundation
>>>>>>> 6516d439901935bd0a53f9fcf5bf96be72139a15
