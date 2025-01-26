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
    private let startButtonView = UIButton(type: .system)
    private let buttonsView = UIView()
    private let rockButtonView = UIButton(type: .custom)
    private let papperButtonView = ChoiceButton(title: "Papper", image: .leftPaper2, color: .systemGreen)

    override func viewDidLoad() {
        super.viewDidLoad()
        pipelineUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        buttonsView.layer.cornerRadius = buttonsView.frame.height / 3
        rockButtonView.imageView!.layer.cornerRadius = rockButtonView.imageView!.frame.height / 2
        rockButtonView.imageView!.layer.cornerRadius = rockButtonView.frame.width * 0.7 / 2
        papperButtonView.imageView!.layer.cornerRadius = papperButtonView.frame.width * 0.7 / 2
    }

}

// MARK: - Setup UI
private extension ViewController {
    
    func pipelineUI() {
        configureBackgroundImageView()
        configureTitleLabelView()
        configureScoreLabelView()
        configureLeftHandImageView()
        configureRightHandImageView()
        configureButtonsView()
        configureStartButtonView()
        configureRockButtonView()
        configurePapperButtonView()
    }
    
    func configureBackgroundImageView() {
        
        view.addSubview(backgroundImageView)
        
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
        
        view.addSubview(titleLabelView)
        
        titleLabelView.text = "Rock Paper Scissors"
        titleLabelView.textColor = .textColor
        titleLabelView.font = UIFont(name: "BerkshireSwash-Regular", size: 500)
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
        
        view.addSubview(scoreLabelView)
        
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
        
        view.addSubview(leftHandImageView)
        
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
        
        view.addSubview(rightHandImageView)
        
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
    
    func configureStartButtonView() {
        
        view.addSubview(startButtonView)
        
        startButtonView.setTitle("start", for: .normal)
        startButtonView.tintColor = .white
        startButtonView.titleLabel?.font = UIFont(name: "BerkshireSwash-Regular", size: 500)
        startButtonView.titleLabel?.adjustsFontSizeToFitWidth = true
        startButtonView.titleLabel?.textAlignment = .center
        startButtonView.backgroundColor = .darkButtonBackgroundColor
        startButtonView.layer.cornerRadius = 20
        startButtonView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButtonView.bottomAnchor.constraint(equalTo: buttonsView.topAnchor, constant: -50),
            startButtonView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            startButtonView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            startButtonView.titleLabel!.centerXAnchor.constraint(equalTo: startButtonView.centerXAnchor),
            startButtonView.titleLabel!.centerYAnchor.constraint(equalTo: startButtonView.centerYAnchor, constant: -3)
        ])
        
    }
    
    func configureButtonsView() {
        
        view.addSubview(buttonsView)
        buttonsView.backgroundColor = .darkButtonBackgroundColor
        buttonsView.layer.opacity = 0.6
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonsView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.97),
            buttonsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
    }
    
    func configureRockButtonView() {
        view.addSubview(rockButtonView)
        
        rockButtonView.translatesAutoresizingMaskIntoConstraints = false
//        rockButtonView.configuration = .plain()
//        rockButtonView.configuration?.imagePlacement = .top
//        rockButtonView.configuration?.image = .leftRock1
//        rockButtonView.configuration?.title = "Rock"
//        rockButtonView.backgroundColor = .gray
        
        //ImageView settings
        rockButtonView.setImage(.leftScissors1, for: .normal)
        rockButtonView.imageView?.translatesAutoresizingMaskIntoConstraints = false
        rockButtonView.imageView?.backgroundColor = .systemOrange
        rockButtonView.imageView?.layer.borderColor = UIColor.white.cgColor
        rockButtonView.imageView?.layer.borderWidth = 5
        rockButtonView.imageView?.clipsToBounds = true
        rockButtonView.imageView?.contentMode = .scaleAspectFit
        
        //TitleView settings
        rockButtonView.setTitle("Rock", for: .normal)
        rockButtonView.titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        rockButtonView.tintColor = .white
        rockButtonView.titleLabel?.font = UIFont(name: "BerkshireSwash-Regular", size: 500)
        rockButtonView.titleLabel?.adjustsFontSizeToFitWidth = true
        rockButtonView.titleLabel?.textAlignment = .center
        
        NSLayoutConstraint.activate([
            rockButtonView.centerXAnchor.constraint(equalTo: buttonsView.centerXAnchor),
            rockButtonView.centerYAnchor.constraint(equalTo: buttonsView.centerYAnchor),
            rockButtonView.heightAnchor.constraint(equalTo: buttonsView.heightAnchor, multiplier: 0.9),
            rockButtonView.widthAnchor.constraint(equalTo: buttonsView.heightAnchor, multiplier: 0.9),
            //ImageView constraits
            rockButtonView.imageView!.topAnchor.constraint(equalTo: rockButtonView.topAnchor, constant: 7),
            rockButtonView.imageView!.centerXAnchor.constraint(equalTo: rockButtonView.centerXAnchor),
            rockButtonView.imageView!.widthAnchor.constraint(equalTo: rockButtonView.widthAnchor, multiplier: 0.7),
            rockButtonView.imageView!.heightAnchor.constraint(equalTo: rockButtonView.widthAnchor, multiplier: 0.7),
            //TitleView constraits
            rockButtonView.titleLabel!.bottomAnchor.constraint(equalTo: rockButtonView.bottomAnchor),
            rockButtonView.titleLabel!.centerXAnchor.constraint(equalTo: rockButtonView.centerXAnchor),
            rockButtonView.titleLabel!.widthAnchor.constraint(equalTo: rockButtonView.widthAnchor, multiplier: 0.9),
            rockButtonView.titleLabel!.heightAnchor.constraint(equalTo: rockButtonView.heightAnchor, multiplier: 0.2)
            
        ])
        
    }
    
    func configurePapperButtonView() {
        view.addSubview(papperButtonView)
        
        NSLayoutConstraint.activate([
            papperButtonView.centerXAnchor.constraint(equalTo: buttonsView.centerXAnchor, constant: -view.frame.width / 3.3),
            papperButtonView.centerYAnchor.constraint(equalTo: buttonsView.centerYAnchor),
            papperButtonView.heightAnchor.constraint(equalTo: buttonsView.heightAnchor, multiplier: 0.9),
            papperButtonView.widthAnchor.constraint(equalTo: buttonsView.heightAnchor, multiplier: 0.9)
        ])
    }
    
}

#Preview {
    ViewController()
}
