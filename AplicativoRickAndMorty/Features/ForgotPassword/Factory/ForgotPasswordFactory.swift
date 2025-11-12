//
//  ForgotPasswordFactory.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - ForgotPasswordFactory
final class ForgotPasswordFactory {
    
    func makeFactory(navigationController: UINavigationController?) -> ForgotPasswordViewController{
        
        let coordinator = ForgotPasswordCoordinator()
        coordinator.navigation = navigationController
        let service = ForgotPasswordService()
        let presenter = ForgotPasswordPresenter(view: nil, coordinator: coordinator)
        let interactor = ForgotPasswordInteractor(presenter: presenter, service: service)
        let forgotVC = ForgotPasswordViewController(interactor: interactor)
        presenter.view = forgotVC
        return forgotVC
    }
    
}
