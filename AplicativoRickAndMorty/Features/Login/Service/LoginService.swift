//
//  LoginService.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation
import FirebaseAuth

//MARK: - Protocol
protocol LoginServicing {
    func loginUser(_ email: String, _ password: String, completion: @escaping(Result<Void, Error>) -> Void)
}

//MARK: - LoginService
final class LoginService { }

//MARK: - LoginServicing
extension LoginService: LoginServicing {
    func loginUser(_ email: String, _ password: String, completion: @escaping (Result<Void, any Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            completion(.success(()))
        }
    }
}
