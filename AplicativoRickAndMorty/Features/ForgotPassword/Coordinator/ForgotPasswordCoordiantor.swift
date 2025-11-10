//
//  ForgotPasswordCoordinator.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - Protocol
protocol ForgotPasswordCoordinating {
    func navigationBackButtonCoordinator()
}

//MARK: - ForgotPasswordCoordinator
final class ForgotPasswordCoordinator {
    
    //MARK: - Properties
    var navigation: UINavigationController?
}

//MARK: - ForgotPasswordCoordinating
extension ForgotPasswordCoordinator: ForgotPasswordCoordinating {
    func navigationBackButtonCoordinator() {
        guard let navigation else { return}
        navigation.popViewController(animated: true)
    }
}
