//
//  AppDelegate.swift
//  Arabic-Localization
//
//  Created by GOVIND KUMAR on 07/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate{
  
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        LocalizationManager.shared.delegate = self
        LocalizationManager.shared.setAppInnitLanguage()
        return true
    }
}
extension AppDelegate:LocalizationDelegate {
    func resetApp() {
        guard let window = window else { return }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ViewController") as ViewController
        window.rootViewController = vc
        let options: UIView.AnimationOptions = .transitionCrossDissolve
        let duration: TimeInterval = 0.2
        UIView.transition(with: window, duration: duration, options: options, animations: nil, completion: nil)
    }
}



   
