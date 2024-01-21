//
//  tenLibrariesAppApp.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 21/01/2024.
//

import SwiftUI
import Firebase
@main
struct tenLibrariesAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FirebaseView()
            }
        }
    }
}
