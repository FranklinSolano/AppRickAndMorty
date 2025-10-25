//
//  DSImageView.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 25/10/25.
//


import UIKit

protocol ImageViewing: UIView {
    var image: UIImage? {get set}
}


class DSImageView: UIImageView {
    
    override init(image: UIImage?) {
        super.init(image: image ?? UIImage(named: ""))
        setupImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupImage(){
        self.contentMode = .scaleAspectFit
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

final class DSImageViewAdapter: DSImageView, ImageViewing {
    
}
