//
//  ViewController.swift
//  CocoaPodsExample
//
//  Created by yuya on 2016/06/10.
//  Copyright © 2016年 hy. All rights reserved.
//

import UIKit
import LTMorphingLabel
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, LTMorphingLabelDelegate {

    var test: LTMorphingLabel!
    
    let textArray = [
        "Hello World Hello World",
        "iPod",
        "iMac",
        "Raspberry Pi",
        "Notebook"
    ]
    var i = 0
    var text: String {
        get {
            if self.i >= textArray.count {
                self.i = 0
            }
            self.i += 1
            return textArray[self.i - 1]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blackColor()
        test = LTMorphingLabel(frame: CGRectMake(0, 0, 200, 100))
        test.text = self.text
        test.morphingEffect = .Scale
        test.layer.position = CGPointMake(self.view.bounds.width / 2, self.view.bounds.height / 2)
        test.textColor = UIColor.whiteColor()
        test.delegate = self
        test.setNeedsLayout()
        test.userInteractionEnabled = true
        test.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(kkk)))
        
        self.view.addSubview(test)
    }
    
    func kkk(sender: UITapGestureRecognizer) {
        test.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController {
    func morphingDidStart(label: LTMorphingLabel) {
    }
    
    func morphingDidComplete(label: LTMorphingLabel) {
    }
    
    func morphingOnProgress(label: LTMorphingLabel, progress: Float) {
    }
    
}

