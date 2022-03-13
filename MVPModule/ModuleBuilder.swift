//
//  ModuleBuilder.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import Foundation
import UIKit

protocol Builder: AnyObject {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let model = Person(firstName: "Gwido", lastName: "A")
        let presenter = MainPresenter(view: view, model: model)
        view.presenter = presenter
        return view
    }
}
