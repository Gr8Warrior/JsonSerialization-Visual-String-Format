//
//  AppsViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/28/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

// UITableView <------- Array
import UIKit

class AppsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  var tableOfApps: UITableView?
  var appNames: [String]?
  
  func loadTableOfApps()  {
    appNames = ["Facebook","Google","Intimetec","Apple","Yahoo","GM","Ferrari","WhatsApps"]
    
    var tableHeight = 0.0
    
    if Double((appNames?.count)!) * 50.0 > 500.0  {
      tableHeight = 50.0
    } else {
      tableHeight = Double((appNames?.count)!) * 50.0
    }
    tableOfApps = UITableView(frame: CGRect(x: 10, y: 10, width: 300, height: tableHeight))
    tableOfApps?.delegate = self
    tableOfApps?.dataSource = self
    
    view.addSubview(tableOfApps!)
  }
 
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = UIColor.blue
      loadTableOfApps()
    }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (appNames?.count)!
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    var cell: UITableViewCell?
    cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    
    //if let guard let
    if cell == nil {
      cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
    }
    cell?.textLabel?.text = appNames?[indexPath.row] //model meets view
    //cell = UITableView(frame: CGRect(x: 10, y: 10, width: 300, height: 40))
    return cell!
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
