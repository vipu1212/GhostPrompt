//
//  ViewController.swift
//  GhostPrompt
//
//  Created by Divyansh Singh on 24/02/16.
//  Copyright © 2016 Servify. All rights reserved.
//

import UIKit

public class GhostPrompt {
    
    lazy var promptHeight = 55
    lazy var bgColor = UIColor.blackColor()
    lazy var textColor = UIColor.whiteColor()
    let view : UIView
    lazy var appearingDirection = UIView.Direction.Bottom
    lazy var animationTime = 0.4
    
    public init(height : Int, ParentView view : UIView) {
        self.view = view
        self.promptHeight = height
    }
    
    func showMessage(Message message : String) {
        
        let frame = CGRectMake(0, view.frame.height - CGFloat(self.promptHeight), view.frame.width, CGFloat(self.promptHeight))
        let messageView = UIView(frame: frame)
        
        messageView.backgroundColor = self.bgColor
        
        messageView.hidden = true
        view.addSubview(messageView)
        
        let label = UILabel(frame: messageView.frame)
        label.text = message
        label.textAlignment = .Center
        label.textColor = self.textColor
        label.font = UIFont(name: "GothamRounded-Light", size: 15.0)
        label.hidden = true
        label.numberOfLines = 0
        view.addSubview(label)
        
        messageView.translateAnimated(self.animationTime, FromDirection: self.appearingDirection)
        label.translateAnimated(self.animationTime, FromDirection: self.appearingDirection)
        
        UIView.animateWithDuration(self.animationTime, delay: 2, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            switch self.appearingDirection {
            case .Top, .Bottom :
                messageView.frame.origin.y = self.view.frame.height
                label.frame.origin.y = self.view.frame.height
            case .Left :
                messageView.frame.origin.x = self.view.frame.size.width
                label.frame.origin.x = self.view.frame.size.width
            case .Right :
                messageView.frame.origin.x = self.view.frame.origin.x-self.view.frame.size.width
                label.frame.origin.x = self.view.frame.origin.x-self.view.frame.size.width
            }
            }, completion: {$0
                messageView.removeFromSuperview()
                label.removeFromSuperview()
        })
    }
}

public extension UIView {
    
    enum Direction {
        case Top
        case Bottom
        case Left
        case Right
    }
    
    func translateAnimated(duration : NSTimeInterval, FromDirection direction : Direction) {
        
        let actualOrigin = self.frame.origin
        
        var origin : CGPoint = CGPoint(x: 0, y: 0)
        
        
        switch direction {
            
        case .Top : origin = CGPointMake(self.frame.origin.x, 0 - self.frame.height)
            
        case .Bottom : origin = CGPointMake(self.frame.origin.x, self.frame.origin.y + self.frame.height)
            
        case .Left : origin = CGPointMake(self.frame.origin.x - self.frame.width, self.frame.origin.y)
            
        case .Right : origin = CGPointMake(self.frame.origin.x + self.frame.width, self.frame.origin.y)
        }
        
        self.frame.origin = origin
        
        self.hidden = false
        
        UIView.animateWithDuration(duration, animations: {
            self.frame.origin = actualOrigin
        })
    }
}
