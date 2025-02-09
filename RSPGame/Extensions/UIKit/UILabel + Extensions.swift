//
//  UILabel + Extensions.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 09.02.2025.
//


import UIKit

extension UILabel {
    
    static var totalLabel: UILabel {
        let label = UILabel()
        label.text = "0:0"
        label.textAlignment = .center
        label.font = .balooGigantic
        label.textColor = .textColor
        return label
    }
}

