//
//  ForgotPasswordPresenter.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol ForgotPasswordPresenting {
    func navigationBackButtonPresenter()
    func showAlertSuccessPresenter()
    func showAlertFailPresenter(_ error: AuthenticationError)
}

//MARK: - ForgotPasswordPresenter
final class ForgotPasswordPresenter {
    
    //MARK: - Properties
    
    weak var view: ForgotPasswordViewControllerDisplay?
    let coordinator: ForgotPasswordCoordinating?
    
    //MARK: - Init
    
    init(view: ForgotPasswordViewControllerDisplay? = nil, coordinator: ForgotPasswordCoordinating?) {
        self.view = view
        self.coordinator = coordinator
    }
}

//MARK: - ForgotPasswordPresenting
extension ForgotPasswordPresenter: ForgotPasswordPresenting {
    func showAlertSuccessPresenter() {
        view?.showAlert(title: "Sucesso", message: "Link de redefinir enviado para o seu email!")
    }
    
    func showAlertFailPresenter(_ error: AuthenticationError) {
        view?.showAlert(title: "Atencao", message: error.localizedDescription)
    }
    
    func navigationBackButtonPresenter() {
        coordinator?.navigationBackButtonCoordinator()
    }
}
