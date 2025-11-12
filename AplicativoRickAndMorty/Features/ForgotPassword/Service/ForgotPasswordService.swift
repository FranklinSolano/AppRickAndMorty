//
//  ForgotPasswordService.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation
import FirebaseAuth

//MARK: - Protocol
protocol ForgotPasswordServicing {
    func resetPassword(email: String, completion: @escaping (Result<Void, Error>) -> Void)
    
}

//MARK: - ForgotPasswordService
final class ForgotPasswordService { }

//MARK: - ForgotPasswordServicing
extension ForgotPasswordService: ForgotPasswordServicing {
    func resetPassword(email: String, completion: @escaping (Result<Void, any Error>) -> Void) {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                completion(.failure(error))
                return
            }
            completion(.success(()))
        }
    }
}
