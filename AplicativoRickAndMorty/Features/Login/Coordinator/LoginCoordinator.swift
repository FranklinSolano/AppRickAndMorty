//
//  LoginCoordinator.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - Protocol
protocol LoginCoordinating {
    func navigationRegisterCoordinator()
}

//MARK: - LoginCoordinator
final class LoginCoordinator {
    
    //MARK: - Properties
    var navigation: UINavigationController?
}

//MARK: - LoginCoordinating
extension LoginCoordinator: LoginCoordinating {
    func navigationRegisterCoordinator() {
        guard let navigation else { return }
        let factory = RegisterFactory()
        let vc = factory.makeFactory(navigationController: navigation)
        navigation.pushViewController(vc, animated: true)
    }
}
