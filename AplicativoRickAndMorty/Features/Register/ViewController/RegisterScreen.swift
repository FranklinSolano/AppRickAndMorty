//
//  RegisterScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

//MARK: - Protocol
protocol RegisterScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
}

//MARK: - RegisterScreen
final class RegisterScreen: UIView {
    
    // MARK: - Properties
    
    weak var delegate: RegisterScreenProtocol?
    
    //MARK: - UI Elements
    
    private lazy var imageBackGround: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageRegister"))
    private lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var nameLabel: Labeling = DSLLabelAdapter()
    private lazy var nameTextField: TextFielding = DSTextFieldAdapter()
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
    private lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    private lazy var passwordLabel: Labeling = DSLLabelAdapter()
    private lazy var passwordTextField: TextFielding = DSTextFieldAdapter()
    private lazy var confirmadPasswordLabel: Labeling = DSLLabelAdapter()
    private lazy var confirmadPasswordTextField: TextFielding = DSTextFieldAdapter()
    private lazy var registerButton: Buttoning = DSButtonAdapter()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Outher Methods
    
    private func configLabel(){
        nameLabel.setDTO(with: .init(text: "Name:"))
        emailLabel.setDTO(with: .init(text: "Email:"))
        passwordLabel.setDTO(with: .init(text: "Password"))
        confirmadPasswordLabel.setDTO(with: .init(text: "ConfirmadPassword"))
    }
    
    private func configTextfield(){
        nameTextField.setDTO(.init(placeholder: "Dioite seu nome", isSecureText: false))
        emailTextField.setDTO(.init(placeholder: "Dioite seu email", isSecureText: false))
        passwordTextField.setDTO(.init(placeholder: "Dioite sua senha", isSecureText: true))
        confirmadPasswordTextField.setDTO(.init(placeholder: "Dioite sua senha novamente", isSecureText: true))
    }
    
    private func configButton(){
        registerButton.setDTO(.init(title: "Register", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        registerButton.onClick {
            self.delegate?.actionRegisterButton()
        }
        
        backButton.setDTO(.init(title: "Bakc <-", isEnable: true, font: DSFonts.subtitleSemibold16))
        backButton.onClick {
            self.delegate?.actionBackButton()
        }
    }
}

// MARK: - ViewCodeProtocol
extension RegisterScreen: ViewCodeProtocol {
    func configElementes() {
        [imageBackGround, backButton, nameLabel, nameTextField, emailLabel, emailTextField, passwordLabel, passwordTextField, confirmadPasswordLabel, confirmadPasswordTextField, registerButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            imageBackGround.topAnchor.constraint(equalTo: topAnchor),
            imageBackGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 60),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 15),
            emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            confirmadPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            confirmadPasswordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            confirmadPasswordTextField.topAnchor.constraint(equalTo: confirmadPasswordLabel.bottomAnchor, constant: 15),
            confirmadPasswordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            confirmadPasswordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            confirmadPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.topAnchor.constraint(equalTo: confirmadPasswordTextField.bottomAnchor,constant: 70),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
            registerButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configAdttionalConfigure() {
        backgroundColor = DSColors.secundaryColor
        configLabel()
        configTextfield()
        configButton()
    }
}
