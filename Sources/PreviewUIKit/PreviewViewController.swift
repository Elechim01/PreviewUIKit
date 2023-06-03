//
//  CustomViewController.swift
//  
//
//  Created by Michele Manniello on 24/05/23.
//

import SwiftUI
import UIKit
 
@available(iOS 13.0, *)
public struct PreviewViewController<MyViewController: UIViewController>: UIViewControllerRepresentable {
    public init() {
         
    }
    public typealias UIViewControllerType = MyViewController
    public func makeUIViewController(context: Context) -> MyViewController {
        let myViewController = MyViewController()
        myViewController.viewDidLoad()
        return myViewController
    }
    public func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
    }
}

