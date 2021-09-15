//
//  FirebaseAnalytics.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation
import Firebase

class FirebaseAnalytics: AnalyticsEngine, Hashable, Equatable  {
    
    // Init Google Analytics library
    init() {
        // Checkout https://firebase.google.com/docs/analytics/get-started?platform=ios to enable Google Analytics
        FirebaseApp.configure()
    }
    
    func sendAnalyticsEvent(name: String, parameter: [String : Any]) {
        print("FirebaseAnalytics - : \(name) : \(parameter)")
        Analytics.logEvent(name, parameters: parameter)
    }
    
    static func ==(lhs: FirebaseAnalytics, rhs: FirebaseAnalytics) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    // each destination class must have an own hashValue Int
#if swift(>=4.2)
    public func hash(into hasher: inout Hasher) {
        hasher.combine(defaultHashValue)
    }
#else
    lazy public var hashValue: Int = self.defaultHashValue
#endif
    
    open var defaultHashValue: Int {return 0}
}
