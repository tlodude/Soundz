//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginWithTwitterTapped(sender: AnyObject) {
        PFTwitterUtils.initializeWithConsumerKey("X1MdESo8vHvBCLUWS3JTKp4UZ", consumerSecret: "1bWFAvZ3ZISUxicvoncqq1WWPtGlTTw72c6XzFNGP209ujtceT")
        
        PFTwitterUtils.logInWithBlock { (user: PFUser?, error: NSError?) -> Void in
            if user == nil {
                println(error)
            } else {
                println("we did it")
                
                self.performSegueWithIdentifier("moveToSoundsSegue", sender: self)
            }
        }
    }
}

