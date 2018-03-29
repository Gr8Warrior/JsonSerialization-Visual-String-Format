//
//  AppsViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/28/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

// UITableView <------- Array
import UIKit

class AppsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AppHeaderViewDelegate {
  
  var tableOfApps: UITableView?
  var appNames: [String]?
  var apps: [AppModel]?
  var categories: [AppCategoryModel]?
  
  func loadTableOfApps()  {
    appNames = ["Facebook","Google","Intimetec","Apple","Yahoo","GM","Ferrari","WhatsApps"]
    
    let provider = AppProvider()
    apps = provider.getApps()
    categories = provider.getAppCategories()
    
    let tableHeight = 500.0
    
//    if Double((appNames?.count)!) * 50.0 > 500.0  {
//      tableHeight = 50.0
//    } else {
//      tableHeight = Double((appNames?.count)!) * 50.0
//    }
    tableOfApps = UITableView(frame: CGRect(x: 10, y: 10, width: 300, height: tableHeight))
    tableOfApps?.delegate = self
    tableOfApps?.dataSource = self
    
    view.addSubview(tableOfApps!)
  }
 
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = UIColor.cyan
      loadTableOfApps()
    }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    if categories![section].isExpand == true {
    return (categories![section].apps?.count)!
    } else {
      return 0
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //tableView.rowHeight = 100
    var cell: AppsTableViewCell?
    cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? AppsTableViewCell
    
    //if let guard let
    if cell == nil {
      cell = AppsTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
    }
   // cell?.textLabel?.text = appNames?[indexPath.row] //model meets view
    //cell = UITableView(frame: CGRect(x: 10, y: 10, width: 300, height: 40))
    
    let app = categories![indexPath.section].apps![indexPath.row]
    cell?.iconImageView?.image = app.icon
    cell?.nameLabel?.text = app.name!+" \(indexPath.section) adfasdfadfad"
    cell?.nameLabel?.adjustsFontSizeToFitWidth = true
    cell?.publisherNameLabel?.text = app.publisherName
    
    return cell!
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return (categories?.count)!
  }
  
//  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//    return categories![section].name
//  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    var appHeaderView: AppHeaderView?
    let category = categories![section]
    //Frame will get restructured
    
    appHeaderView = AppHeaderView(frame: CGRect.zero)
    appHeaderView?.index = section
    
    appHeaderView?.delegate = self
    appHeaderView!.iconImageView!.image = category.iconImage
    appHeaderView!.nameLabel?.text = category.name
    if categories![section].isExpand! {
      appHeaderView!.nameLabel?.textColor = UIColor.red
    } else {
      appHeaderView!.nameLabel?.textColor = UIColor.black
    }
    return appHeaderView
  }
  
  func didHeaderSelected(_ index: Int) {
    categories![index].isExpand = !categories![index].isExpand!
    tableOfApps?.reloadData()
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 60.0
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("\(indexPath.row)")
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
