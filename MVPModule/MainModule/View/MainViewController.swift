//
//  MainViewController.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    // MARK: - Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func showGreetingAction(_ sender: UIButton) {
        self.presenter.showGreeting()
    }
}

// MARK: - Binding
extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}
