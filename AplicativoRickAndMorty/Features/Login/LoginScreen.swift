//
//  LoginScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//


import UIKit

final class LoginScreen: UIView {
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email:"
        return label
    }()
    
    lazy var emailTextFiel: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite seu email"
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password:"
        return label
    }()
    
    lazy var passwordTextFiel: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite sua senha"
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ForgotPassword?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    lazy var loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    
    lazy var registerButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Nao tem conta? Registra-se", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        configElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
