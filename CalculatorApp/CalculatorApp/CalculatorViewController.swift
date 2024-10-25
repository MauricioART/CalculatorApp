//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by ArturoAR
//

import UIKit

class CalculatorViewController: UIViewController {
    
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
    
   
   

    
}

