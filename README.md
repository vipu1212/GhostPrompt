# GhostPrompt

[![CI Status](http://img.shields.io/travis/Divyansh Singh/GhostPrompt.svg?style=flat)](https://travis-ci.org/Divyansh Singh/GhostPrompt)
[![Version](https://img.shields.io/cocoapods/v/GhostPrompt.svg?style=flat)](http://cocoapods.org/pods/GhostPrompt)
[![License](https://img.shields.io/cocoapods/l/GhostPrompt.svg?style=flat)](http://cocoapods.org/pods/GhostPrompt)
[![Platform](https://img.shields.io/cocoapods/p/GhostPrompt.svg?style=flat)](http://cocoapods.org/pods/GhostPrompt)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Min Version : iOS 8.3

## Usage

Using GhostPrompt in code

```
let prompt = GhostPrompt(height: 55, ParentView: self.view)
prompt.showMessage(Message: "Boooo")
```

Customizable Properties 

promptHeight // Change the height of the prompt bar
bgColor // Change the prompts the background Color
textColor // Change the text color of the prompt
view // View where to present the prompt
appearingDirection  // Direction from where to show appearing
animationTime // Duration of the visibility of the prompt

## Key Points

Currently alert is shown just at the bottom of the view. 
Highly suggested to pass 'self.view' view to prompt

## Installation

You want to add pod 'GhostPrompt', '~> 0.0' similar to the following to your Podfile:

target 'MyApp' do pod 'GhostPrompt', '~> 0.0' end Then run a pod install inside your terminal, or from CocoaPods.app.

Alternatively to give it a test run, run the command:

pod try GhostPrompt


GhostPrompt is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:


## Author

Divyansh Singh, divyansh.1212@gmail.com

## License

GhostPrompt is available under the MIT license. See the LICENSE file for more info.
