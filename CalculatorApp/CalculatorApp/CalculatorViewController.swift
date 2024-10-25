//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by ArturoAR
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak asnwerLabel: UILabel = UILabel!
    @IBOutlet weak ACButton: UIButton = UIButton!
    @IBOutlet weak eraseButton: UIButton = UIButton!
    @IBOutlet weak addButton: UIButton = UIButton!
    @IBOutlet weak subsButton: UIButton = UIButton!
    @IBOutlet weak mulButton: UIButton = UIButton!
    @IBOutlet weak divButton: UIButton = UIButton!
    @IBOutlet weak percentageButton: UIButton = UIButton!
    @IBOutlet weak ansButton: UIButton = UIButton!
    @IBOutlet weak operateButton: UIButton = UIButton!
    @IBOutlet weak oneButton: UIButton = UIButton!
    @IBOutlet weak twoButton: UIButton = UIButton!
    @IBOutlet weak threeButton: UIButton = UIButton!
    @IBOutlet weak fourButton: UIButton = UIButton!
    @IBOutlet weak fiveButton: UIButton = UIButton!
    @IBOutlet weak sixButton: UIButton = UIButton!
    @IBOutlet weak sevenButton: UIButton = UIButton!
    @IBOutlet weak eightButton: UIButton = UIButton!
    @IBOutlet weak nineButton: UIButton = UIButton!
    @IBOutlet weak zeroButton: UIButton = UIButton!
    @IBOutlet weak pointButton: UIButton = UIButton!
    
    var answer: Float = 0.0
    
    private var customView: CalculatorView {
        return view as! CalculatorView
    }
    
    override func loadView() {
        view = CalculatorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.loginButton.addAction(UIAction(handler: doLogin(_:)), for: .touchUpInside)
    }
    
    @IBAction func doAction(_ sender: UIButton){
        switch(sender.referenceIdentifier){
            case "":
            default: 
                break
        }
    }

    private func updateAnswer(answer: String){
        answerLabel.text = answer
    }
   

    
}

