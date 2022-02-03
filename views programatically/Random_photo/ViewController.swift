////
////  ViewController.swift
////  Random_photo
////
////  Created by Cumulations Technologies on 28/01/22.
////
//
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        let button = UIButton(type: UIButton.ButtonType.system) as UIButton
        button.backgroundColor = UIColor.red
               button.setTitle("Tap me", for: UIControl.State.normal)
               button.tintColor = UIColor.black

        view.addSubview(button)
        button.frame = CGRect(x:100, y: 100, width:100, height: 50)
        
        
        let label = UILabel()
        label.text = "label"
        label.tintColor = .red
        view.addSubview(label)
        label.frame=CGRect(x: 100, y: 50, width: 100, height: 50)
    }


}
