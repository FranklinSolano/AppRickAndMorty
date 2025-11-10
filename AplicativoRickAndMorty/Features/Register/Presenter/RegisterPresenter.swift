//
//  RegisterPresenter.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - RegisterPresenting
protocol RegisterPresenting {
    func navigationBackButtonPresenter()
}

//MARK: - RegisterPresenter
final class RegisterPresenter {
    
    //MARK: - Properties
    weak var view: RegisterViewControllerDisplay?
    let coordinator: RegisterCoordinating?
    
    //MARK: - Init
    
    init(view: RegisterViewControllerDisplay? = nil, coordinator: RegisterCoordinating?) {
        self.view = view
        self.coordinator = coordinator
    }
}

//MARK: - RegisterPresenting
extension RegisterPresenter: RegisterPresenting {
    func navigationBackButtonPresenter() {
        coordinator?.navigationBackButtonCoordinator()
    }
}
