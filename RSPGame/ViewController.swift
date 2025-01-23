//
//  ViewController.swift
//  RSPGame
//
//  Created by Сергей Прасолов on 23.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let backgroundImageView = UIImageView()
    private let titleLabelView = UILabel()
    private let scoreLabelView = UILabel()
    private let leftHandImageView = UIImageView()
    private let rightHandImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        pipelineUI()
    }

}

// MARK: - Setup UI
private extension ViewController {
    
    func pipelineUI() {
        view.addSubview(backgroundImageView)
        view.addSubview(titleLabelView)
        view.addSubview(scoreLabelView)
        view.addSubview(leftHandImageView)
        view.addSubview(rightHandImageView)
        
        configureBackgroundImageView()
        configureTitleLabelView()
        configureScoreLabelView()
        configureLeftHandImageView()
        configureRightHandImageView()
    }
    
    func configureBackgroundImageView() {
        
        backgroundImageView.image = .background1
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func configureTitleLabelView() {
        
        titleLabelView.text = "Rock Paper Scissors"
        titleLabelView.textColor = .textColor
        titleLabelView.font = UIFont(name: "BerkshireSwash-Regular", size: 50)
        titleLabelView.adjustsFontSizeToFitWidth = true
        titleLabelView.textAlignment = .center
        titleLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabelView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLabelView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07)
        ])
    }
    
    func configureScoreLabelView() {
        
        scoreLabelView.text = "0:0"
        scoreLabelView.textColor = .textColor
        scoreLabelView.font = UIFont(name: "Baloo Cyrillic", size: 500)
        scoreLabelView.adjustsFontSizeToFitWidth = true
        scoreLabelView.textAlignment = .center
        scoreLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scoreLabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scoreLabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scoreLabelView.topAnchor.constraint(equalTo: titleLabelView.bottomAnchor),
            scoreLabelView.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 50)
        ])
    }
    
    func configureLeftHandImageView() {
        
        leftHandImageView.image = .leftPaper1
        leftHandImageView.contentMode = .scaleToFill
        leftHandImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leftHandImageView.topAnchor.constraint(equalTo: scoreLabelView.centerYAnchor),
            leftHandImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            leftHandImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            leftHandImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -view.frame.width / 3.3)
        ])
    }
    
    func configureRightHandImageView() {
        
        rightHandImageView.image = .rightScissors1
        rightHandImageView.contentMode = .scaleToFill
        rightHandImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rightHandImageView.topAnchor.constraint(equalTo: scoreLabelView.centerYAnchor),
            rightHandImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            rightHandImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            rightHandImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width / 3.3)
        ])
    }
    
}

#Preview {
    ViewController()
}
