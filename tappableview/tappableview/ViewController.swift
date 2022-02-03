//
//  ViewController.swift
//  tappableview
//
//  Created by Cumulations Technologies on 01/02/22.
//

import UIKit

class ViewController: UIViewController {
    func functionprint(t:String){
        print(t )
    }

    @IBAction func textchange(_ sender: UITextField ) {
        let t = text.text
        functionprint(t: t!)
    }
    @IBOutlet weak var text: UITextField!
    //    @IBOutlet weak var tapview: UIView!{
//        didSet {
//                    tapview.backgroundColor = .black
//                }
//            }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

