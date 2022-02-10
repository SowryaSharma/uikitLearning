//
//  ViewController.swift
//  plist tutorial
//
//  Created by Cumulations Technologies on 10/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
    let appVersion  = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let dict = NSDictionary(contentsOfFile:path!)
        myLabel.text = "\(appVersion)"
        print(dict ?? "error")
    }


}

