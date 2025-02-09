//
//  GameModel.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//

import Foundation
<<<<<<< HEAD

class GameModel {
    
    var player = Resource.Player(name: "Player")
    var computer = Resource.Player(name: "Computer")
    
    func compareChoices(_ choice1: Resource.GameChoice, _ choice2: Resource.GameChoice) -> Resource.GameResult { // win если первый игрок выйграл, loose если первый проиграл
        switch (choice1, choice2) {
        case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
            return .win
        case (.rock, .paper), (.scissors, .rock), (.paper, .scissors):
            return .loose
        default:
            return .draw
        }
    }
    
}
=======
>>>>>>> 6516d439901935bd0a53f9fcf5bf96be72139a15
