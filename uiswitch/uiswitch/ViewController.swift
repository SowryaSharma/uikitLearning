//
//  ViewController.swift
//  uiswitch
//
//  Created by Cumulations Technologies on 31/01/22.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var sampleSwitch.addTarget(self, action: #selector(ViewController.sampleSwitchValueChanged(sender:)), for: UIControl.Event.valueChanged)
    }

   func sampleSwitchValueChanged(_ sender: UISwitch) {

        if sampleSwitch.isOn {
            print("ON")
        }
        else {
            print ("OFF")
        }

}

}
