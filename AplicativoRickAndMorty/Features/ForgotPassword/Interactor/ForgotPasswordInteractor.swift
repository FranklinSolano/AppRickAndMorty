//
//  ForgotPasswordInteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol ForgotPasswordInteracting {
    func navigationBackButtonInteractor()
    
}

//MARK: - ForgotPasswordInteractor
final class ForgotPasswordInteractor {
    
    //MARK: - Properties
    
    let presenter: ForgotPasswordPresenting?
    private let service: ForgotPasswordServicing?
    
    //MARK: - Init
    
    init(presenter: ForgotPasswordPresenting, service: ForgotPasswordServicing) {
        self.presenter = presenter
        self.service = service
    }
}

//MARK: - ForgotPasswordInteracting
extension ForgotPasswordInteractor: ForgotPasswordInteracting {
    func navigationBackButtonInteractor() {
        presenter?.navigationBackButtonPresenter()
    }
}
