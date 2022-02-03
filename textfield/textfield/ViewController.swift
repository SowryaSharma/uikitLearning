//
//  ViewController.swift
//  textfield
//
//  Created by Cumulations Technologies on 31/01/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBAction func logintap(_ sender: Any) {
    }
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
        configureTapGesture()
}
    private func configureTextFields(){
        email.delegate=self
        password.delegate=self
    }
    private func configureTapGesture(){
        let tapDetect = UITapGestureRecognizer(target: self, action: #selector(ViewController.handletap))
        view.addGestureRecognizer(tapDetect)
    }
    @objc func handletap(){
        view.endEditing(true)
        print("completed")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
