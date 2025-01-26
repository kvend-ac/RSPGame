//
//  ChoiceButton.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 26.01.2025.
//

import UIKit

final class ChoiceButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, image: UIImage, color: UIColor) {
        self.init(type: .custom)
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)
        self.imageView?.backgroundColor = color
    }
    
    private func configure() {
        self.imageView?.layer.cornerRadius = 20
        self.translatesAutoresizingMaskIntoConstraints = false
        
        //ImageView settings
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.backgroundColor = .systemOrange
        self.imageView?.layer.borderColor = UIColor.white.cgColor
        self.imageView?.layer.borderWidth = 5
        self.imageView?.contentMode = .scaleAspectFit
        self.imageView?.clipsToBounds = true
        //TitleView settings
        self.titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        self.tintColor = .white
        self.titleLabel?.font = UIFont(name: "BerkshireSwash-Regular", size: 500)
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.textAlignment = .center
        
        NSLayoutConstraint.activate([
            //ImageView constraits
            self.imageView!.topAnchor.constraint(equalTo: self.topAnchor, constant: 7),
            self.imageView!.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageView!.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7),
            self.imageView!.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7),
            //TitleView constraits
            self.titleLabel!.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.titleLabel!.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.titleLabel!.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9),
            self.titleLabel!.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2)
            
        ])
    }
}
