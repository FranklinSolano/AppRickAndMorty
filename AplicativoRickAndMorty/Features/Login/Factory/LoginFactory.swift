//
//  LoginFactory.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - LoginFactory
final class LoginFactory {
    func makeFactory(navigation: UINavigationController) -> (viewController: LoginViewController, coordinator: LoginCoordinator) {
        let coordinator = LoginCoordinator()
        coordinator.navigation = navigation
        let service = LoginService()
        let presenter = LoginPresenter(view: nil, coordinator: coordinator)
        let interactor = LoginInteractor(presenter: presenter, service: service)
        let viewController = LoginViewController(interactor: interactor)
        presenter.view = viewController
        
        return (viewController, coordinator)
    }
}
