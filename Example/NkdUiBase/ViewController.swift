//
//  ViewController.swift
//  NkdUiBase
//
//  Created by Hüseyin Öz on 12/07/2024.
//  Copyright (c) 2024 Hüseyin Öz. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var swiftUIContainer: UIView! // Storyboard'daki UIView'e IBOutlet bağlantısı

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ButtonView SwiftUI görünümünü oluştur
        let buttonView = ButtonExamplesView()
        
        // UIHostingController ile SwiftUI görünümünü sarmala
        let hostingController = UIHostingController(rootView: buttonView)
        
        // HostingController'ın görünümünü mevcut UIView'e ekle
        addChildViewController(hostingController)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        swiftUIContainer.addSubview(hostingController.view)
        
        // Constraints ayarla
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: swiftUIContainer.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: swiftUIContainer.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: swiftUIContainer.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: swiftUIContainer.bottomAnchor)
        ])
        
        // Child ViewController olarak ekle
        hostingController.didMove(toParent: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
