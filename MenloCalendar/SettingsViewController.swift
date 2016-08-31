//
//  SettingsViewController.swift
//  MenloCalendar
//
//  Created by Dhruv Mangtani on 8/28/16.
//  Copyright © 2016 Ben Siminoff. All rights reserved.
//
// Settings will be edited by client
// 
// Comment this thingy
import UIKit
class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var blocks = ["A", "B", "C", "D", "E", "F"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blocks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("settingCell") as! SettingTableViewCell
        cell.blockLabel.text = blocks[indexPath.row]
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
