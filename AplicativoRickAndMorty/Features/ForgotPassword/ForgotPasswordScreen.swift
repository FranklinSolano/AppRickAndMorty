//
//  ForgotPasswordScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 27/10/25.
//


import UIKit

protocol ForgotPasswordScreenProtocol: AnyObject {
    func actionBackButton()
    func actionEnterButton()
}

final class ForgotPasswordScreen: UIView {
    
    weak var delegate: ForgotPasswordScreenProtocol?
    func delegate(delegate: ForgotPasswordScreenProtocol) {
        self.delegate = delegate
    }

    private lazy var imageBackGround: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageForgotPassword"))
    private lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var titleLabel: Labeling = DSLLabelAdapter()
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
    private lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    private lazy var enterButton: Buttoning = DSButtonAdapter()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configLabel(){
        titleLabel.setDTO(with: .init(text: "Informe o seu email aqui para redefinar a senha", textcolor: DSColors.textColorTitle, font: DSFonts.subtitleSemibold16, numberOdLines: 0, textAlignment: .center))
        emailLabel.setDTO(with: .init(text: "Email"))
    }

    private func configTextField(){
        emailTextField.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
    }

    private func configButton(){
        enterButton.setDTO(.init(title: "Enviar", isEnable: true, font: DSFonts.subtitleSemibold16))
        enterButton.onClick {
            self.delegate?.actionEnterButton()
        }
        backButton.setDTO(.init(title: "Back <-", isEnable: true, font: DSFonts.subtitleSemibold16))
        backButton.onClick {
            self.delegate?.actionBackButton()
        }
    }
}

extension ForgotPasswordScreen: ViewCodeProtocol {
    func configElementes() {
        [imageBackGround, backButton, titleLabel, emailLabel, emailTextField, enterButton].forEach(addSubview)
    }

    func configConstraints() {
        NSLayoutConstraint.activate([
            
            imageBackGround.topAnchor.constraint(equalTo: topAnchor),
            imageBackGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            

            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),

            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 40),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),


            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 15),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),

            enterButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 70),
            enterButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            enterButton.heightAnchor.constraint(equalToConstant: 50),
            enterButton.widthAnchor.constraint(equalToConstant: 200),


        ])

    }

    func configAdttionalConfigure() {
        backgroundColor = DSColors.secundaryColor
        configLabel()
        configTextField()
        configButton()
    }


}
