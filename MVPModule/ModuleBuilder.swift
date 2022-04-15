//
//  ModuleBuilder.swift
//  MVPModule
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import Foundation
import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let model = Person(firstName: "Gwido", lastName: "Halo")
        let presenter = Presenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
    
}
