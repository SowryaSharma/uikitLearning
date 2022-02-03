//
//  ViewController.swift
//  table view displaying names in sorted order
//
//  Created by Cumulations Technologies on 02/02/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    var arr:Array<String> = ["sowrya","john","tst","gfg","gg"].sorted()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allCell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "allCell")

        let name = arr[indexPath.row]
        cell.textLabel?.text = "cell \(name)"
        return cell
    }
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        let sortedArray = arr.sorted()
        
    }


}

