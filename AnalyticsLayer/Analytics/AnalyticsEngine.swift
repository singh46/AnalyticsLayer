//
//  AnalyticsEngine.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation

protocol AnalyticsEngine {
    func sendAnalyticsEvent(name: String, parameter: [String : Any])
}
