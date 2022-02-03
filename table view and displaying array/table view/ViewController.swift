//
//  ViewController.swift
//  table view
//
//  Created by Cumulations Technologies on 02/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var arr:Array<String>=["ag","gg","hgh","Gf","gjhjh","vfg","bh","gvg","hgy","gg"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let arr:Array<Int>=[]
//        let cell=UITableViewCell()
//        cell.textLabel?.text="this row is \(indexPath.row)"
//        return cell
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allCell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "allCell")

        let location = arr[indexPath.row]
        cell.textLabel?.text = "array element \(location)"
       

        return cell
        }

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
    }


}


