//
//  ViewController.swift
//  TableViewExample
//
//  Created by Sabrina Areas on 2015-10-27.
//  Copyright © 2015 Baloon Girl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myDataSOurce = ["Kwame", "Johanna", "Ethan", "Elijah", "Etienne"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myDataSOurce.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        cell.textLabel?.text = myDataSOurce[indexPath.row]
        cell.detailTextLabel?.text = "detailed text"
        return cell
    }

    @IBOutlet var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

