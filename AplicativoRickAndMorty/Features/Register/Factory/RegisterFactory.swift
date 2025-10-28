//
//  RegisterFactory.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - RegisterFactory
final class RegisterFactory {
    
    func makeFactory(navigationController: UINavigationController?) -> RegisterViewController{
        
        let coordinator = RegisterCoordinator()
        coordinator.navigation = navigationController
        let service = RegisterService()
        let presenter = RegisterPresenter(view: nil, coordinator: coordinator)
        let interactor = RegisterInteractor(presenter: presenter, service: service)
        let registerVC = RegisterViewController(interactor: interactor)
        presenter.view = registerVC
        return registerVC
    }
}
