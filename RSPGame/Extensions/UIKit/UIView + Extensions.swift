//
//  UIView + Extensions.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//


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

