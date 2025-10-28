//
//  Registerinteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol RegisterInteracting { }

//MARK: - RegisterInteractor
final class RegisterInteractor {
    
    //MARK: - Properties
    
    let presenter: RegisterPresenting?
    private let service: RegisterServicing?
    
    //MARK: - Init
    
    init(presenter: RegisterPresenting, service: RegisterServicing) {
        self.presenter = presenter
        self.service = service
    }
}

//MARK: - RegisterInteracting
extension RegisterInteractor: RegisterInteracting { }
