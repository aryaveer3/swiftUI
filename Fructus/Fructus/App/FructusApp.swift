//
//  FructusApp.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 16/12/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
