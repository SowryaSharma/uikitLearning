//
//  ViewController.swift
//  http requests
//
//  Created by Cumulations Technologies on 08/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tasks:Array<String>=[]
    var complet:Bool = true
    struct Details: Codable {
        var userId:Int
        var id:Int
        var title:String
        var completed:Bool
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var fetch: UIButton!
    @IBAction func fetchData(_sender:UIButton){
        // Create URL
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")
//        guard let requestUrl = url else { fatalError() }
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            // Check if Error took place
            if let error = error {
                print("Error took place \(error)")
                return
            }
            if let response = response as? HTTPURLResponse {
                print("Response HTTP Status code: \(response.statusCode)")}
            if let data = data{
                let detail: Details = try! JSONDecoder().decode(Details.self, from: data)
                self.tasks.append(detail.title)
                DispatchQueue.main.async { self.tableView.reloadData() }
                }
            }
        task.resume()}
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
    }
    


}

