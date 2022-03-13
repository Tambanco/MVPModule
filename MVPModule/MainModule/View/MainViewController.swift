//
//  MainViewController.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func showGreetingAction(_ sender: UIButton) {
        
    }
}

// MARK: - Binding
extension MainViewController: MainPresenterProtocol {
    func showGreeting() {
        <#code#>
    }
    
    
}
