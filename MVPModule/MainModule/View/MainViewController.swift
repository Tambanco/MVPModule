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
    @IBOutlet weak var personLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func confirmButton(_ sender: UIButton) {
        self.presenter.setGreeting()
    }
}


// MARK: - Binding
extension MainViewController: MainViewProtocol {
    func showGreeting(greeting: String) {
        self.personLabel.text = greeting
    }
}
