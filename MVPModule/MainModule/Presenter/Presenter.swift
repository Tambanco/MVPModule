//
//  Presenter.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import Foundation

// MARK: - Output Protocol
protocol MainViewProtocol: AnyObject {
    func showGreeting(greeting: String)
}

// MARK: - Input protocol
protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func setGreeting()
}

class Presenter: MainPresenterProtocol {
    
    var view: MainViewProtocol
    var person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func setGreeting() {
        let greeting = "Hello, \(person.firstName) \(person.lastName)"
        self.view.showGreeting(greeting: greeting)
    }
}
