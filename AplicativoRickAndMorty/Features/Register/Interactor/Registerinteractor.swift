//
//  Registerinteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 28/10/25.
//

import Foundation

//MARK: - Protocol
protocol RegisterInteracting {
    func navigationBackButtonInteractor()
    func registerUser(name: String?, email: String?, password: String?, confirmPassword: String?)
}

//MARK: - RegisterInteractor
final class RegisterInteractor {
    
    //MARK: - Properties
    
    let presenter: RegisterPresenting
    private let service: RegisterServicing?
    
    //MARK: - Init
    
    init(presenter: RegisterPresenting, service: RegisterServicing) {
        self.presenter = presenter
        self.service = service
    }
}

//MARK: - RegisterInteracting
extension RegisterInteractor: RegisterInteracting {
    
    func registerUser(name: String?, email: String?, password: String?, confirmPassword: String?) {
        do {
            let user = try validateUserInput(name: name, email: email, password: password, confirmPassword: confirmPassword)
            
            service?.createUser(user) { result in
                
                switch result {
                    
                case .success:
                    self.presenter.showAlertSuccessPresenter()
                case .failure(let error):
                    let registerError = AuthenticationError.firebaseError(error.localizedDescription)
                    self.presenter.showAlertFailPresenter(registerError)
                }
            }
        } catch {
            
            if let registerError = error as? AuthenticationError {
                self.presenter.showAlertFailPresenter(registerError)
            } else {
                self.presenter.showAlertFailPresenter(.firebaseError(error.localizedDescription))
            }
        }
    }
    
    func navigationBackButtonInteractor() {
        presenter.navigationBackButtonPresenter()
    }
    
    private func validateUserInput(name: String?, email: String?, password: String?, confirmPassword: String?) throws -> UserModel {
         guard let name, !name.isEmpty else {
             throw AuthenticationError.emptyName
         }
         guard let email, !email.isEmpty else {
             throw AuthenticationError.emptyEmail
         }
         guard let password, !password.isEmpty else {
             throw AuthenticationError.emptyPassword
         }
        
         guard password.count >= 6 else {
             throw AuthenticationError.minimumPassword
         }
         guard let confirmPassword, password == confirmPassword else {
             throw AuthenticationError.passwordMismatch
         }
         
         return UserModel(name: name, email: email, password: password)
     }
}
