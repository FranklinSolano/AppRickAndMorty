//
//  RegisteViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 24/10/25.
//

import UIKit

class RegisteViewController: UIViewController {
    
    var scren: RegisterScreen?
    
    override func loadView() {
        scren = RegisterScreen()
        view = scren
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
