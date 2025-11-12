//
//  LoginScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

//MARK: - Protocol
protocol LoginScreenProtocol: AnyObject {
    func actionRegisterButton()
    func actionForgotPasswordButton()
    func actionTabBar()
}

//MARK: - LoginScreen
final class LoginScreen: UIView {
    
    //MARK: - Properties
    weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate: LoginScreenProtocol) {
        self.delegate = delegate
    }
    
    //MARK: - UI Elements
        
    private lazy var imageBackGroundImage: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageLogin"))
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
     lazy var emailTextFiel: TextFielding = DSTextFieldAdapter()
    private lazy var passwordLabel: Labeling = DSLLabelAdapter()
     lazy var passwordTextFiel: TextFielding = DSTextFieldAdapter()
    private lazy var forgotPasswordButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var loginButton: Buttoning = DSButtonAdapter()
    private lazy var registerButton: Buttoning = DSButtonTitlesAdapter()

    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Outher Methods
    
    private func configLabel() {
        emailLabel.setDTO(with: .init(text: "Email:"))
        passwordLabel.setDTO(with: .init(text: "Password:"))
    }
    
    private func configTextField() {
        emailTextFiel.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
        passwordTextFiel.setDTO(.init(placeholder: "Digite sua senha", isSecureText: true))
    }
    
    private func configButton() {
        forgotPasswordButton.setDTO(.init(title: "ForgotPassword?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        forgotPasswordButton.onClick {
            self.delegate?.actionForgotPasswordButton()
        }
        
        loginButton.setDTO(.init(title: "Login?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        loginButton.onClick {
            self.delegate?.actionTabBar()
        }
        
        registerButton.setDTO(.init(title: "Nao tem conta? Registra-se?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        registerButton.onClick {
            self.delegate?.actionRegisterButton()
        }
    }
}

//MARK: - ViewCodeProtocol
extension LoginScreen: ViewCodeProtocol {
    func configElementes() {
        [imageBackGroundImage, emailLabel, emailTextFiel, passwordLabel, passwordTextFiel, forgotPasswordButton, loginButton, registerButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
        
            
            imageBackGroundImage.topAnchor.constraint(equalTo: topAnchor),
            imageBackGroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            
            emailTextFiel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 15),
            emailTextFiel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextFiel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextFiel.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextFiel.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordTextFiel.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 15),
            passwordTextFiel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextFiel.trailingAnchor.constraint(equalTo: emailTextFiel.trailingAnchor),
            passwordTextFiel.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextFiel.bottomAnchor, constant: 15),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: emailTextFiel.trailingAnchor),
            
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 70),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configAdttionalConfigure() {
        backgroundColor = DSColors.secundaryColor
        configLabel()
        configTextField()
        configButton()
    }
}
