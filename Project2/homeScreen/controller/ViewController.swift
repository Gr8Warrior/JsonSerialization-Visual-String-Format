//
//  ViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/28/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var nameLabel: UILabel?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.red
    loadNameLabel()
  }
  
  func loadNameLabel() {
    // Step 1 : Create or get Model
    let name: String = "Shailendra"
    
    // Step 2 : Create a view {Divided into 4 steps}
    
    
    // Step 2.1 : Initialize view with Frame
    nameLabel = UILabel(frame: CGRect(x: 10, y: 100, width: 300, height: 40))
    
    // Step 2.2 : Associate model with view
    nameLabel?.text = name //model meets vieww inside controller
    
    // Step 2.3 : Look and Feel property(optional)
    nameLabel?.textColor = UIColor.blue
    nameLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    nameLabel?.textAlignment = NSTextAlignment.center
    
    // Step 4 : add view to parenr view
    self.view.addSubview(nameLabel!)
    
    // Step 4 :
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

