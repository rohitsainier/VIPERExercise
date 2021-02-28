//
//  AppDelegate.swift
//  VIPERExercise
//
//  Created by Rohit Saini on 27/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //MAIN Controller
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialViewController = HomeModuleBuilder.build(usingNavigationFactory: NavigationBuilder.build)
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

