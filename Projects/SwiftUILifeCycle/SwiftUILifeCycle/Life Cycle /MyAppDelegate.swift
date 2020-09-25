//
//  MyAppDelegate.swift
//  SwiftUILifeCycle
//
//  Created by Hector Villasano on 9/25/20.
//

import UIKit

class MyAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("from MyAppDelegate")
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let config = UISceneConfiguration(name: "MySceneDelegate", sessionRole: connectingSceneSession.role)
        config.delegateClass = MySceneDelegate.self
        return config
    }
}
