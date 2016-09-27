//
//  ViewController.swift
//  HomeAuto
//
//  Created by Jake on 9/27/16.
//  Copyright © 2016 Jake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CurrentState: UILabel!
    var State = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func CheckGarageState(_ sender: AnyObject) {
        
        if(State == true)
        {
            self.CurrentState.text = "On";
            State = false;
        }
        else
        {
            self.CurrentState.text = "Off";
            State = true;
        }
        
    }
}

