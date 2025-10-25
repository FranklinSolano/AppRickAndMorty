//
//  DSTextField.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

struct TextFieldDTO {
    let placeholder: String
    let isSecureText: Bool
    
    init(placeholder: String, isSecureText: Bool) {
        self.placeholder = placeholder
        self.isSecureText = isSecureText
    }
}


protocol TextFielding: UIView {
    var text: String? {get set}
    func setDTO(_ dto: TextFieldDTO)
    var delegate: UITextFieldDelegate? {get set}
}


class DSTextField: UITextField {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTextField() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 2
        self.layer.borderColor = DSColors.primaryColor.cgColor
        self.autocapitalizationType = .none
        self.textColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = DSColors.backGroundColor
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    
    func setDTO(_ dto: TextFieldDTO) {
        self.placeholder = dto.placeholder
        self.isSecureTextEntry = dto.isSecureText
        self.attributedPlaceholder = NSAttributedString(
            string: dto.placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: DSColors.textColorTitle]
        )
    }
  
}

final class DSTextFieldAdapter: DSTextField, TextFielding {}

