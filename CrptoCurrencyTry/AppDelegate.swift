//
//  AppDelegate.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 4.11.2021.
//

import UIKit
import IQKeyboardManagerSwift
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        userDefaultsData.saveLanguageId(languageId: 2)
        IQKeyboardManager.shared.enable = true
        FirebaseApp.configure()
        
        return true
    }
}

