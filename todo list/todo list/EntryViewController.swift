//
//  EntryViewController.swift
//  todo list
//
//  Created by Cumulations Technologies on 07/02/22.
//

import UIKit

class EntryViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var field:UITextField!
    var update:(()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Save", style: .done, target: self, action: #selector(saveTask))
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    @objc func saveTask(){
        guard let text = field.text, !text.isEmpty else{
            return
        }
        guard let count = UserDefaults().value(forKey: "count") else{
            return
        }
        let newCount = count as! Int+1
        UserDefaults().set(newCount,forKey: "count")
        UserDefaults().set(text,forKey:"task_\(newCount)")
        update?()
        navigationController?.popViewController(animated: true)
    }

}
