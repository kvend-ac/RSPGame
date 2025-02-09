//
//  ViewController.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 23.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let backgroundImageView = UIImageView(image: .background)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setConstraints()
    }
    

}

// MARK: - Setup UI
private extension ViewController {
    
    func setupUI() {
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
    }

}
//MARK: - Set Constraints
private extension ViewController {
    
    func setConstraints() {
        
        backgroundImageView.constraintsForAnchoringTo(boundsOf: view)
        
    }
    
}
