//
//  DSButton.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

struct ButtonDTO {
    let title: String
    let isEnable: Bool
    let font: UIFont?
    
    init(title: String, isEnable: Bool, font: UIFont?) {
        self.title = title
        self.isEnable = isEnable
        self.font = font
    }
    
}

protocol Buttoning: UIView {
    func setDTO(_ dto: ButtonDTO)
    func onClick(_ action: @escaping () -> Void)
}

class DSButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.setTitleColor(DSColors.textColorTitle, for: .normal)
        self.backgroundColor = DSColors.primaryColor
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DSButtonTitles: UIButton {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.setTitleColor(DSColors.textColorTitle, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


final class DSButtonAdapter: DSButton, Buttoning {
    
    private var onClickAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setDTO(_ dto: ButtonDTO) {
        self.setTitle(dto.title, for: .normal)
        self.isEnabled = dto.isEnable
        self.alpha = dto.isEnable ? 1 : 0.5
        if let font = dto.font {
            self.titleLabel?.font = font
        }
        
    }
    
    func onClick(_ action: @escaping () -> Void) {
        self.onClickAction = action
    }
    
    @objc private func didTap(){
        onClickAction?()
    }
}

final class DSButtonTitlesAdapter: DSButtonTitles, Buttoning {
    
    private var onClickAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setDTO(_ dto: ButtonDTO) {
        self.setTitle(dto.title, for: .normal)
        self.isEnabled = dto.isEnable
        self.alpha = dto.isEnable ? 1 : 0.5
        if let font = dto.font {
            self.titleLabel?.font = font
        }
        
    }
    
    func onClick(_ action: @escaping () -> Void) {
        self.onClickAction = action
    }
    
    @objc private func didTap(){
        onClickAction?()
    }
}
