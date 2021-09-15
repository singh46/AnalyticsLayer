//
//  MixpanelAnalytics.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation
import Mixpanel

class MixpanelAnalytics: AnalyticsEngine, Hashable, Equatable  {
    
    // Init Mixpanel Analytics library
    init() {
        // Checkout https://developer.mixpanel.com/docs/ios-swift-quickstart to enable Mixpanel
         Mixpanel.initialize(token: "MIXPANEL_TOKEN")
    }
    
    func sendAnalyticsEvent(name: String, parameter: [String : Any]) {
        print("MixpanelAnalytics - : \(name) : \(parameter)")
        if let mixpanelParameter = parameter as? [String: MixpanelType] {
            Mixpanel.mainInstance().track(event: name, properties: mixpanelParameter)
        }else {
            print("MixpanelType : Parsing error")
        }
    }
    static func ==(lhs: MixpanelAnalytics, rhs: MixpanelAnalytics) -> Bool {
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

