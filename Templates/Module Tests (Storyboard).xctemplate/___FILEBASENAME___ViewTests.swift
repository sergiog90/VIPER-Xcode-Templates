//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___

final class ___VARIABLE_productName___ViewTests: XCTestCase {
    private var presenter: PresenterMock!
    var sut: ___VARIABLE_productName___View!

    override func setUp() {
        super.setUp()
        presenter = PresenterMock()

        let storyboard = UIStoryboard(name: ___VARIABLE_productName___View.storyboard, bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: ___VARIABLE_productName___View.identifier)
        guard let storyboardView = viewController as? ___VARIABLE_productName___View else {
            fatalError()
        }
        sut = storyboardView
        sut.presenter = presenter

        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()
    }

    override func tearDown() {
        super.tearDown()
        sut.beginAppearanceTransition(false, animated: false)
        sut.endAppearanceTransition()
    }
}

extension ___VARIABLE_productName___ViewTests {

    // TODO: Test view

}

// MARK: - Mocks Classes

private class PresenterMock: ___VARIABLE_productName___PresenterProtocol {
    var router: ___VARIABLE_productName___RouterProtocol
    var interactor: ___VARIABLE_productName___InteractorProtocol
    var view: ___VARIABLE_productName___ViewProtocol?

    init() {
        self.router = RouterMock()
        self.interactor = InteractorMock()
    }
}

private class RouterMock: ___VARIABLE_productName___RouterProtocol {
    var view: UIViewController?

}

private class InteractorMock: CharactersInteractorProtocol {

}