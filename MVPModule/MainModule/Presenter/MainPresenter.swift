//
//  MainPresenter.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import Foundation

// MARK: - Output protocol
protocol MainViewProtocol: AnyObject {
    func setGreeting(greeting: String)
}

// MARK: - Input protocol
protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, model: Person)
    func showGreeting()
}

class MainPresenter: MainPresenterProtocol {
    
    var view: MainViewProtocol
    var model: Person
    
    func showGreeting() {
        let greeting = "Hello, \(self.model.firstName) \(self.model.lastName)"
        self.view.setGreeting(greeting: greeting)
    }
    
    required init(view: MainViewProtocol, model: Person) {
        self.view = view
        self.model = model
    }
    
}
