//
//  TestMainModule.swift
//  MVPModuleTests
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import XCTest
@testable import MVPModule

class MockView: MainViewProtocol {
    var titleTest: String?
    
func setGreeting(greeting: String) {
    self.titleTest = greeting
    }
}

class TestMainPresenter: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Foo", lastName: "Bar")
        presenter = MainPresenter(view: view, model: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Hello, Foo Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "Foo")
        XCTAssertEqual(person.lastName, "Bar")
    }

}
