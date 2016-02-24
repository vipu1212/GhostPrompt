//
//  SampleViewController.swift
//  GhostPrompt
//
//  Created by Divyansh Singh on 24/02/16.
//  Copyright © 2016 Servify. All rights reserved.
//

import UIKit
import GhostPrompt

class SampleViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    
    override func viewDidLoad() {
    }
    
    @IBAction func clickedDirection(sender : UIButton) {
        
        var direction = UIView.Direction.Bottom
        
        switch sender.restorationIdentifier! {
        case "top" : direction = .Top
        case "bottom" : direction = .Bottom
        case "left" : direction = .Left
        case "right" : direction = .Right
        default : break
        }
        
        let prompt = GhostPrompt(height: 55, ParentView: self.view)
        prompt.appearingDirection = direction
        prompt.showMessage(Message: "Boooo")
    }
}