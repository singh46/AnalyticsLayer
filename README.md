# AnalyticsLayer
Easy to use analytics layer for Google and Mixpanel in Swift

Good code to quick start Analytics integration in our new or existing swift code.
Using this small code we can easily integrate with multiple Analytics library without changing much code.

For Adding new analytics library
1)	Create a new wrapper class (ex: NewAnalytics) and confirm **AnalyticsEngine** protocol 
2)	Initialize analytics library in **init()**
3)	Implement **sendAnalyticsEvent** method


To enable this newly added library for all events call 

**AppAnalytics.addAnalyticEngines(NewAnalytics())**


<br>

Useful links to quickly enable Google and Mixpanel in your project :

Google Analytics : https://firebase.google.com/docs/analytics/get-started?platform=ios

Mixpanel : https://developer.mixpanel.com/docs/ios-swift-quickstart

