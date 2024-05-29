//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by BeLocum-6 on 27/05/24.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {
    var network = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
