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
    func navigationBackButtonPresenter() {
        coordinator?.navigationBackButtonCoordinator()
    }
}
