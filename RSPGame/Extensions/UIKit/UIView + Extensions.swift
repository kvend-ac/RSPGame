//
//  UIView + Extensions.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//

<<<<<<< HEAD
import UIKit

extension UIView {
    
    func constraintsForAnchoringTo(boundsOf view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
=======
import Foundation
>>>>>>> 6516d439901935bd0a53f9fcf5bf96be72139a15
