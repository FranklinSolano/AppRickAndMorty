//
//  LoginScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//


import UIKit

final class LoginScreen: UIView {
    
    private lazy var emailLabel: Labelling = DSLabelAdapter()
    private lazy var emailTextFiel: TextFielding = DSTextFieldAdapter()
    private lazy var passwordLabel: Labelling = DSLabelAdapter()
    private lazy var passwordTextFiel: TextFielding = DSTextFieldAdapter()
    private lazy var forgotPasswordButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var loginButton:Buttoning = DSButtonAdapter()
    private lazy var registerButton: Buttoning = DSButtonTitlesAdapter()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .darkGray
        configElements()
        configConstraints()
        configLabel()
        configTextField()
        configButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLabel(){
        emailLabel.setDTO(.init(text: "Email:", textColor: .black, font: UIFont.systemFont(ofSize: 14), alignment: .left, numberOfLines: 0))
        passwordLabel.setDTO(.init(text: "Password", textColor: .black, font: UIFont.systemFont(ofSize: 14), alignment: .left, numberOfLines: 0))
    }
    
    private func configTextField(){
        emailTextFiel.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
        passwordTextFiel.setDTO(.init(placeholder: "Digite sua senha", isSecureText: true))
    }
    
    private func configButton(){
        forgotPasswordButton.setDTO(.init(title: "ForgotPassword?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        forgotPasswordButton.onClick {
            
        }
        loginButton.setDTO(.init(title: "Login?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        loginButton.onClick {
            
        }
        registerButton.setDTO(.init(title: "Nao tem conta? Registra-se?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        registerButton.onClick {
            
        }
    }
    
    private func configElements(){
        addSubview(emailLabel)
        addSubview(emailTextFiel)
        addSubview(passwordLabel)
        addSubview(passwordTextFiel)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
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
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextFiel.bottomAnchor,constant: 15),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: emailTextFiel.trailingAnchor),
            
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor,constant: 70),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            
            
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -15),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
}
