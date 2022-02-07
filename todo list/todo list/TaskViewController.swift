//
//  TaskViewController.swift
//  todo list
//
//  Created by Cumulations Technologies on 07/02/22.
//

import UIKit

class TaskViewController: UIViewController {
    @IBOutlet var label:UILabel!
    var task:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text=task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"delete",style:.done, target: self, action: #selector(deleteTask))

    }
    @objc func deleteTask(){
        guard let count = UserDefaults().value(forKey: "count") else{
            return
        }
        let newCount = count as! Int-1
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(nil, forKey: "task_\(newCount)")
        navigationController?.popViewController(animated: true)
        
    }
    

}
