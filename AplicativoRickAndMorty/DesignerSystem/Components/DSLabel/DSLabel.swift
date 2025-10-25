//
//  DSLabel.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

struct DTOLabel {
    let text: String
    let textcolor: UIColor
    let font: UIFont
    let numberOdLines: Int
    let textAlignment: NSTextAlignment
    
    init(text: String, textcolor: UIColor = DSColors.textColorTitle, font: UIFont = DSFonts.subtitleSemibold16, numberOdLines: Int = 0, textAlignment: NSTextAlignment = .left) {
        self.text = text
        self.textcolor = textcolor
        self.font = font
        self.numberOdLines = numberOdLines
        self.textAlignment = textAlignment
    }
}

protocol Labeling: UIView {
    func setDTO(with dto: DTOLabel)
    var text: String? { get set}
}

class DSLabel: UILabel {
    func configure(_ dto: DTOLabel){
        self.text = dto.text
        self.textColor = dto.textcolor
        self.font = dto.font
        self.numberOfLines = dto.numberOdLines
        self.textAlignment = dto.textAlignment
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

final class DSLLabelAdapter: DSLabel, Labeling {
    func setDTO(with dto: DTOLabel) {
        configure(dto)
    }
    
    
}
