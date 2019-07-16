//
//  AppDelegate.swift
//  TodoApp
//
//  Created by Damian Skowroński on 15/07/2019.
//  Copyright © 2019 Damian Skowroński. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Aplikacja została uruchomiona")
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("App will resign active")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Aplikacja działa teraz w tle")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Aplikacja wróciła na główny ekran")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Aplikacja jest aktywna")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("Aplikacja została zamknięta")
    }


}

