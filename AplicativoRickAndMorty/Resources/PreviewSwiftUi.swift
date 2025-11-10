//
//  PreviewSwiftUi.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 27/10/25.
//


import SwiftUI
import UIKit

@available(iOS 13.0, *)
struct ViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: ViewController

    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }

    func makeUIViewController(context: Context) -> ViewController {
        return viewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {}
}

@available(iOS 13.0, *)
struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let view: View

    init(_ builder: @escaping () -> View) {
        view = builder()
    }

    func makeUIView(context: Context) -> View {
        return view
    }

    func updateUIView(_ uiView: View, context: Context) {}
}
