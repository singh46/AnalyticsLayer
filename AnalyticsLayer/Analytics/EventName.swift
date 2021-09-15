//
//  UNAEventName.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation

enum EventName : String {
    case screen
    case start
    case background
    case foreground
    case terminate
    case api_fail
    case sampleEvent
    case sampleEventWithParameters
}


enum Screen : String {
    case home_page
    case list_page
    case detail_page
    case other_page
}
