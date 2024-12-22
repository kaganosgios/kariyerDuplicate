//
//  kariyerApp.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

@main
struct kariyerApp: App {
    @StateObject private var userState = UserState()

    var body: some Scene {
        WindowGroup {
            HomeView() .environmentObject(UserState())
        }
    }
}
