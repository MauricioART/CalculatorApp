//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by ArturoAR
//

import UIKit

class CalculatorViewController: UIViewController {

    
    var answer: Float = 0.0
    var operator1: Float = 0.0
    var operator2: Float = 0.0
    var display: String = "0"
    
    private var customView: CalculatorView {
        return view as! CalculatorView
    }
    
    override func loadView() {
        view = CalculatorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //customView.loginButton.addAction(UIAction(handler: doLogin(_:)), for: .touchUpInside)
        for button in customView.buttons{
            button.addAction(UIAction(handler: doAction(_:)), for: .touchUpInside)
        }
    }
    
    func doAction(_ sender: UIAction){
        let button = sender.sender as! UIButton
        switch(button.restorationIdentifier) {
        case "AC":
            cleanVariables()
        case "ANS":
            operator1 = answer
        case "DEL":
            display.removeLast()
            updateDisplay()
        case "/":
            display.append("/")
            updateDisplay()
        case "x":
            display.append("x")
            updateDisplay()
        case "+":
            display.append("+")
            updateDisplay()
        case "-":
            display.append("-")
            updateDisplay()
        case "=":
            display.removeAll()
            display.append("\(answer)")
            updateDisplay()
        case "%":
            display.append("%")
            updateDisplay()
        case "0":
            display.append("0")
            updateDisplay()
        case "1":
            display.append("1")
            updateDisplay()
        case "2":
            display.append("2")
            updateDisplay()
        case "3":
            display.append("3")
            updateDisplay()
        case "4":
            display.append("4")
            updateDisplay()
        case "5":
            display.append("5")
            updateDisplay()
        case "6":
            display.append("6")
            updateDisplay()
        case "7":
            display.append("7")
            updateDisplay()
        case "8":
            display.append("8")
            updateDisplay()
        case "9":
            display.append("9")
            updateDisplay()
        default:
            break
        }
    }
    
    private func updateDisplay(){
        customView.answerLabel.text = display
    }
    
    private func cleanVariables(){
        answer = 0.0
        operator1 = 0.0
        operator2 = 0.0
        customView.answerLabel.text = "0"
    }

    private func updateAnswer(answer: String){
        customView.answerLabel.text = answer
    }
   

    
}

