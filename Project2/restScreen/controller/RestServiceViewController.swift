//
//  RestServiceViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

/*
 1. Create an agent (model) class (1 agent for 1 web service)
 2. Implement agent purpose
  2.1 get the data from the server
  2.2 process the server
 3. create a container(Optional)
 4. Create a pure model class or classes(optional)
 5. Implement feedback mechanism
 
 http://test.chatongo.in/api/GetUserTypes
*/

class RestServiceViewController: UIViewController, GetUserTypesParserDelegate, UITableViewDelegate, UITableViewDataSource {

  var parser: GetUserTypesParser?
  var tableOfUserTypes: UITableView?
  var userTypes: [UserTypeModel]?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = UIColor.white
      edgesForExtendedLayout = UIRectEdge()
      
      parser = GetUserTypesParser()
      parser?.delegate = self
      parser!.getUserTypes()

    }

  func loadTableOfUserTypes(){
      tableOfUserTypes = UITableView(frame: self.view.frame)
      tableOfUserTypes?.dataSource = self
      tableOfUserTypes?.delegate = self
      self.view.addSubview(tableOfUserTypes!)
      self.tableOfUserTypes?.reloadData()
  }
  
  func didReceiveUserTypes(_ userTypes: [UserTypeModel]) {
    print("Shailu \(userTypes.count)")
    self.userTypes = userTypes
    loadTableOfUserTypes()
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return userTypes?.count ?? 0
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: "user")
    
    if cell == nil {
      cell = UITableViewCell.init(style: UITableViewCellStyle.subtitle, reuseIdentifier: "user")
    }
    let user = userTypes![indexPath.row]
    cell?.textLabel?.text = user.UserTypeName
    cell?.detailTextLabel?.text = user.UserTypeId
    
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
