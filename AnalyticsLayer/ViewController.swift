//
//  ViewController.swift
//  AnalyticsLayer
//
//  Created by VK
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Log screen open event
        AppAnalytics.log(AnalyticsEvent.openScreen(screen: Screen.home_page))
    }
    
    @IBAction func logEventWithNameAction(_ sender: Any) {
        AppAnalytics.log(AnalyticsEvent.sampleEvent)
    }
    
    
    @IBAction func logEventWithParametersAction(_ sender: Any) {
        AppAnalytics.log(AnalyticsEvent.sampleEventWithParameters(param1: "Dummy Value 1", param2: 10))
        
    }
    
}




