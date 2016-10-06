lunch-test
==========

iOS Developer Test Project

Requirements
------------
Xcode 8.0
Swift 3.0
iOS 10 and above

Swift vs Objective-C
--------------------

I wrote the code for the `UIWebView` in Objective-C. Although Swift is the language I prefer and am more comfortable with (hence my website - [theotherswiftgirl.com](http://theotherswiftgirl.com)!)

I have been learning to read and understand Objective-C recently in order to be able to understand Objective-C code examples on websites such as Stack Overflow and to contribute to existing Objective-C projects. This project is the first time I have written in Objective-C! 

I crammed and gave myself a bit of a crash-course in the language and wanted to demonstrate what I had learned as well as the fact that I am a good learner and determined to do whatever it takes to become a well-rounded developer.

Don't Repeat Yourself
---------------------

I wanted to create the `RestaurantStore` in the project to demonstrate my proficiency with singletons. I wanted to put the code to download the data and parse the JSON inside this class so that I would have a singleton to refer to and wouldn’t have to repeat my code. Through my studies, I’ve learned that one of the basic fundamentals of writing good code is  DRY or “don’t repeat yourself!” 

One MapView To Rule Them All
----------------------------

As you’ll notice, I decided to embed my `mapView` in a `containerView` so that it is reusable for displaying the location of one restaurant in the `RestaurantDetailView`, and the same `mapView` can be used to pop up as a modal to display the location of all the restaurants when the maps icon is tapped.  
