//
//  ViewController.swift
//  practice
//
//  Created by Cumulations Technologies on 01/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    @IBOutlet weak var myswitch: UISwitch!
    @IBAction func switchchanged(_ sender: Any) {
        if myswitch.isOn{
            print("on")
//            myswitch.setOn(false, animated:true)
        }
        else{
            print("off")
            myswitch.setOn(false, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonpressed(_ sender: Any) {
        print("clicked")
    }
    

}

