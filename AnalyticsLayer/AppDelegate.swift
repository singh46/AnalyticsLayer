//
//  AppDelegate.swift
//  AnalyticsLayer
//
//  Created by VK
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Configure Anlytics libraries
        configureAnlytics()
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}



extension AppDelegate {

    // Configure Anlytics libraries
    func configureAnlytics() {
        
        let enableFirebase = true
        let enableMixpanel = true
        
        if enableFirebase {
            AppAnalytics.addAnalyticEngines(FirebaseAnalytics())
        }
        if enableMixpanel {
            AppAnalytics.addAnalyticEngines(MixpanelAnalytics())
        }
    }
    
    //MARK: - Sample log events
    func applicationWillTerminate(_ application: UIApplication) {
        AppAnalytics.log(AnalyticsEvent.terminate)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        AppAnalytics.log(AnalyticsEvent.enterBackground)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        AppAnalytics.log(AnalyticsEvent.enterForeground)
    }
}
