//
//  CalculatorView.swift
//  CalculatorApp
//
//  Created by ArturoAR
//

import UIKit

class CalculatorView: UIView {

    lazy var answerLabel: UILabel = {
      let label = UILabel()
      label.setContentCompressionResistancePriority(.required, for: .vertical)
      label.translatesAutoresizingMaskIntoConstraints = false
      label.text = "0"
      return label
    }

    lazy var ACButton: UIButton = {
      let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("AC", for: .normal)
        var configuration = UIButton.Configuration.plain()
        configuration.cornerStyle = .large
        configuration.background.backgroundColor = .systemCyan
        configuration.baseForegroundColor = .systemGray6
        button.configuration = configuration
        return button
    }

    lazy var ansButton: UIButton = {
      let button = createButton(text: "ANS", color: .systemOrange)
      return button
    }
  
    lazy var eraseButton: UIButton = {
      let button = createButton(text: "", color: .systemOrange)
      return button
    }

    lazy var addButton: UIButton = {
      let button = createButton(text: "+", color: .systemOrange)
      return button
    }

    lazy var subsButton: UIButton = 
      let button = createButton(text: "-", color: .systemOrange)
      return button
      
    }

    lazy var mulButton: UIButton = {
      let button = createButton(text: "x", color: .systemOrange)
      return button      
    }

    lazy var divButton: UIButton = {
      let button = createButton(text: "/", color: .systemOrange)
      return button      
    }

    lazy var percentageButton: UIButton = {
      let button = createButton(text: "%", color: .systemOrange)
      return button      
    }

    lazy var operateButton: UIButton = {
      let button = createButton(text: "=", color: .systemOrange)
      return button      
    }

    lazy var oneButton: UIButton = {
      let button = createButton(text: "1", color: .systemGray)
      return button
    }

    lazy var twoButton: UIButton = {
      let button = createButton(text: "2", color: .systemGray)
      return button
    }

    lazy var threeButton: UIButton = {
      let button = createButton(text: "3", color: .systemGray)
      return button
    }

    lazy var fourButton: UIButton = {
      let button = createButton(text: "4", color: .systemGray)
      return button
    }

    lazy var fiveButton: UIButton = {
      let button = createButton(text: "5", color: .systemGray)
      return button
    }

    lazy var sixButton: UIButton = {
      let button = createButton(text: "6", color: .systemGray)
      return button
    }

    lazy var sevenButton: UIButton = {
      let button = createButton(text: "7", color: .systemGray)
      return button
    }

    lazy var eightButton: UIButton = {
      let button = createButton(text: "8", color: .systemGray)
      return button
    }

    lazy var nineButton: UIButton = {
      let button = createButton(text: "9", color: .systemGray)
      return button
    }

    lazy var zeroButton: UIButton = {
      let button = createButton(text: "0", color: .systemGray)
      return button
    }  

    lazy var pointButton: UIButton = {
      let button = createButton(text: ".", color: .systemGray)
      return button
    }  

    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("login", for: .normal)
        var configuration = UIButton.Configuration.plain()
        configuration.cornerStyle = .large
        configuration.background.backgroundColor = .systemCyan
        configuration.baseForegroundColor = .systemGray6
        button.configuration = configuration
        return button
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var buttons: [UIButton] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addButtons()
        addViews()
        addContainerView()
        addAnswerLabel()
        addButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func createButton(text: String, color: UIColor, image: UIImage?) -> UIButton{
          let button = UIButton(type: .system)
          button.frame = CGRect(x: 100, y: 100, width: 100, height: 100) // Tamaño cuadrado para asegurar forma circular
          button.setTitle(text, for: .normal)
          button.backgroundColor = color

          // Redondear el botón para hacerlo circular
          button.layer.cornerRadius = button.frame.size.width / 2
          button.clipsToBounds = true // Asegura que el contenido siga la forma circular

          return button
    }
  
    private func addContainerView() {
        let centerY = containerView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        centerY.priority = .defaultLow
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            containerView.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -8),
            containerView.topAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            centerY
        ])
    }
    
    private func addAnswerLabel() {
        answerLabel.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8).isActive = true
        answerLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8).isActive = true
    }
    
    private func addButton() {
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 32).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        let aspectRatio = loginButton.widthAnchor.constraint(equalTo: loginButton.heightAnchor, multiplier: 5)
        aspectRatio.priority = .defaultHigh
        aspectRatio.isActive = true
    }

    private func addButtons(){
      buttons.append(answerLabel)
      buttons.append(ACButton)
      buttons.append(ansButton)
      buttons.append(percentageButton)
      buttons.append(eraseButton)
      buttons.append(sevenButton)
      buttons.append(eightButton)
      buttons.append(nineButton)
      buttons.append(addButton)
      buttons.append(fourButton)
      buttons.append(fiveButton)
      buttons.append(sixButton)
      buttons.append(subsButton)
      buttons.append(oneButton)
      buttons.append(twoButton)
      buttons.append(threeButton)
      buttons.append(divButton)
      buttons.append(pointButton)
      buttons.append(zeroButton)
      buttons.append(operateButton)
      buttons.append(mulButton)

    }
    private func addViews() {
        addSubview(containerView)
        for button in self.buttons {
          containerView.addSubview(button)
        }
              
    }
}
