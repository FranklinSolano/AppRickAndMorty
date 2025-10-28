//
//  ForgotPasswordViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 27/10/25.
//


import UIKit

class ForgotPasswordViewController: UIViewController {

    var screen: ForgotPasswordScreen?

    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
        screen?.delegate(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension ForgotPasswordViewController: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func actionEnterButton() {
        
    }
    
    
}
