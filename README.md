# AnalyticsLayer
Easy to use analytics layer with Google and Mixpanel

Good code to quick start Analytics integration in our new or existing swift code.
Using this small code we can easily integrate with multiple Analytics library without changing much code.

For Adding new analytics library
1)	Create a new wrapper class and confirm **AnalyticsEngine** protocol 
2)	Initialize analytics library in **init()**
3)	Implement **sendAnalyticsEvent** method


To enable this newly added library for all events call 

**AppAnalytics.addAnalyticEngines(NewAnalyticsLibrary())**

