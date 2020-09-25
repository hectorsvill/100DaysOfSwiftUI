//
//  SwiftUILifeCycleApp.swift
//  SwiftUILifeCycle
//
//  Created by Hector Villasano on 9/25/20.
//

import SwiftUI

@main
struct SwiftUILifeCycleApp: App {
    //app delegate adapter
    @UIApplicationDelegateAdaptor(MyAppDelegate.self) var appDelegate
    
    // monitor scene phase
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        // configure library
        configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .active :
                print("Active")
            case .inactive:
                print("Inactive")
            case .background:
                print("Background")
            @unknown default:
                print("Something new added by apple")
            }
        }
    }
    
    private func configure() {
        appDelegate.accessibilityActivate()
    }
    
}
