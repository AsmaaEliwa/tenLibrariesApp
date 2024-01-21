//
//  SVProgressHUDView.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//

import Foundation
import SwiftUI
import SVProgressHUD

struct SVProgressHUDView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController

    func makeUIViewController(context: Context) -> UIViewController {
        return UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No-op for now
    }

    func show() {
        SVProgressHUD.show()
    }

    func dismiss() {
        SVProgressHUD.dismiss()
    }
}
