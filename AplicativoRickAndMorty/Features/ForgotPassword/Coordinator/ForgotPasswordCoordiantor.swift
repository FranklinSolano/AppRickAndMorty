//
//  ForgotPasswordCoordinator.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit

//MARK: - Protocol
protocol ForgotPasswordCoordinating { }

//MARK: - ForgotPasswordCoordinator
final class ForgotPasswordCoordinator {
    
    //MARK: - Properties
    var navigation: UINavigationController?
}

//MARK: - ForgotPasswordCoordinating
extension ForgotPasswordCoordinator: ForgotPasswordCoordinating { }
