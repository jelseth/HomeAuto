//
//  ViewController.swift
//  HomeAuto
//
//  Created by Jake and the TROY on 9/27/16.
//  Copyright © 2016 Jake and the TROY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CurrentState: UILabel!
    var State = false;
    
    @IBOutlet weak var JSONOutput: UILabel!
    
    var apiClass = API()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CheckGarageState(_ sender: AnyObject) {
        State = apiClass.GetCurrentDoorState();
        if(State)
        {
            self.CurrentState.text = "Current State";
            //State = false;
            self.CurrentState.text = "Closed";
        }
        else
        {
            self.CurrentState.text = "Open";
            State = true;
        }
        self.JSONOutput.text = apiClass.GetIPAddress();
    }
}

