//
//  AnalyticsEvent.swift
//  AnalyticsLayer
//
//  Created by VK
//

import Foundation

enum AnalyticsEvent  {
    case enterBackground
    case enterForeground
    case terminate
    case openScreen(screen: Screen)
    case sampleEvent
    case sampleEventWithParameters(param1 : String,  param2 : Int)
    case apiFailure(url : String,  statusCode : Int, error: String)
}


extension AnalyticsEvent {
    
    var name : String {
        switch self {
        case .enterBackground:
            return EventName.background.rawValue
        case .enterForeground:
            return EventName.foreground.rawValue
        case .terminate:
            return  EventName.terminate.rawValue
        case .openScreen:
            return EventName.screen.rawValue
        case .sampleEvent:
            return EventName.sampleEvent.rawValue
        case .sampleEventWithParameters :
            return EventName.sampleEventWithParameters.rawValue
        case .apiFailure:
            return EventName.api_fail.rawValue
        }
    }
}


extension AnalyticsEvent {
    
    var parameter : [String : Any]?
    {
        switch self {
        case .enterBackground,.enterForeground,.terminate :
            return nil
            
        case .openScreen(let screen):
            return ["name" : screen.rawValue]
            
        case .sampleEvent:
            return nil
            
        case .sampleEventWithParameters(let param1, let param2) :
            return ["param1" : param1, "param2" : param2]
            
        case .apiFailure(let url, let statusCode, let error):
            return ["url" : url, "statusCode" : statusCode, "error" : error]
        }
    }
}


