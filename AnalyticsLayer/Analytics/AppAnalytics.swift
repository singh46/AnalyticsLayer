//
//  AppAnalytics.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation

open class AppAnalytics {
    
    private(set) static var engines = Set<AnyHashable>()
    private(set) static var sessionId = UUID().uuidString
    
    class func addAnalyticEngines<T>(_ item: T) where T: AnalyticsEngine, T: Hashable {
        engines.insert(AnyHashable(item))
    }
    
    class func removeAnalyticEngines<T>(_ item: T) where T: AnalyticsEngine, T: Hashable {
        for obj in engines {
            if ((obj as? T) != nil){
                engines.remove(obj)
            }
        }
    }
    
    class func log(_ event: AnalyticsEvent) {
        
        if engines.count > 0 {
            var updatedParameater = [String : Any]()
            if let parameter =  event.parameter{
                updatedParameater = parameter
            }
            updatedParameater[APIKeys.deviceId] = "Test-Device-Id"
            updatedParameater[APIKeys.timeStamp] = Date().timeIntervalSince1970
            updatedParameater[APIKeys.sessionId] = sessionId
            
            engines.forEach { (engine) in
                (engine as? AnalyticsEngine)?.sendAnalyticsEvent(name: event.name, parameter: updatedParameater)
            }
        }else {
            print("NO App Analytics Enabled")
        }
    }
    
    struct APIKeys {
        static let deviceId = "deviceId"
        static let userId = "userId"
        static let timeStamp = "TimeStamp"
        static let sessionId = "sessionId"
    }
}


