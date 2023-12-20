//
//  MeineFarmApp.swift
//  MeineFarm
//
//  Created by Marcel Zimmermann on 07.12.23.
//

import SwiftUI

@main
struct MeineFarmApp: App {
    @StateObject private var viewModel = ViewModel(service: AppService())
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environmentObject(viewModel)
        }
    }
}
