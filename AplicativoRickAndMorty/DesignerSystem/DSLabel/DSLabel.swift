//
//  DSLabel.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

struct DTOLabel {
    let text: String
    let textColor: UIColor
    let font: UIFont
    let alignment: NSTextAlignment
    let numberOfLines: Int
    
    init(text: String, textColor: UIColor, font: UIFont, alignment: NSTextAlignment, numberOfLines: Int) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.alignment = alignment
        self.numberOfLines = numberOfLines
    }
}

protocol Labelling: UIView {
    func setDTO(_ dto: DTOLabel)
    var text: String? {get set}
}

class DSLabel: UILabel {
    func configure(_ dto: DTOLabel) {
        self.text = dto.text
        self.textColor = dto.textColor
        self.font = dto.font
        self.textAlignment = dto.alignment
        self.numberOfLines = dto.numberOfLines
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

final class DSLabelAdapter: DSLabel, Labelling {
    func setDTO(_ dto: DTOLabel) {
        configure(dto)
    }
    
    
}
