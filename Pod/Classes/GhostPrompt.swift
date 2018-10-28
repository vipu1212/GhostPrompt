//
//  ViewController.swift
//  GhostPrompt
//
//  Created by Divyansh Singh on 24/02/16.
//  Copyright © 2016 Divyansh. All rights reserved.
//

import UIKit

public class GhostPrompt {

    public lazy var promptHeight = 55
    public lazy var bgColor = UIColor(red: 0.423, green: 0.356, blue: 0.925, alpha: 1)
    public lazy var textColor = UIColor.white
    public let view : UIView
    public lazy var appearingDirection = UIView.Direction.Bottom
    public lazy var animationTime = 0.4

    public init(height : Int, ParentView view : UIView) {
        self.view = view
        self.promptHeight = height
    }

    public func showMessage(Message message : String) {

        let frame = CGRect(x: 0, y: view.frame.height - CGFloat(self.promptHeight), width: view.frame.width, height: CGFloat(self.promptHeight))
        let messageView = UIView(frame: frame)

        messageView.backgroundColor = self.bgColor

        messageView.isHidden = true
        view.addSubview(messageView)

        let label = UILabel(frame: messageView.frame)
        label.text = message
        label.textAlignment = .center
        label.textColor = self.textColor
        label.font = UIFont(name: "GothamRounded-Light", size: 15.0)
        label.isHidden = true
        label.numberOfLines = 0
        view.addSubview(label)

        messageView.translateAnimated(duration: self.animationTime, FromDirection: self.appearingDirection)
        label.translateAnimated(duration: self.animationTime, FromDirection: self.appearingDirection)

        UIView.animate(withDuration: self.animationTime, delay: 2, options: UIView.AnimationOptions.curveEaseOut, animations: {
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
        }, completion: { _ in
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

    func translateAnimated(duration : TimeInterval, FromDirection direction : Direction) {

        let actualOrigin = self.frame.origin

        var origin : CGPoint = CGPoint(x: 0, y: 0)


        switch direction {

            case .Top : origin = CGPoint(x: self.frame.origin.x, y: 0 - self.frame.height)

            case .Bottom : origin = CGPoint(x: self.frame.origin.x, y: self.frame.origin.y + self.frame.height)

            case .Left : origin = CGPoint(x: self.frame.origin.x - self.frame.width, y: self.frame.origin.y)

            case .Right : origin = CGPoint(x: self.frame.origin.x + self.frame.width, y: self.frame.origin.y)
        }

        self.frame.origin = origin

        self.isHidden = false

        UIView.animate(withDuration: duration, animations: {
            self.frame.origin = actualOrigin
        })
    }
}
