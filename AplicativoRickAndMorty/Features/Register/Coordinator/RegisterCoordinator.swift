//
//  RegisterCoordinator.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import UIKit
//MARK: - Protocol
protocol RegisterCoordinating {
}

//MARK: - RegisterCoordinator
final class RegisterCoordinator {
    var navigation: UINavigationController?
}
//MARK: - RegisterCoordinating
extension RegisterCoordinator: RegisterCoordinating { }
