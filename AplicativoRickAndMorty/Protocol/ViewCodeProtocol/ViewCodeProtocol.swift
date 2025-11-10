
//
//  ViewCodeProtocol.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import Foundation

protocol ViewCodeProtocol {
    func configElementes()
    func configConstraints()
    func configAdttionalConfigure()
    func setupView()
}

extension ViewCodeProtocol {
    func setupView() {
        configAdttionalConfigure()
        configElementes()
        configConstraints()
    }
}
