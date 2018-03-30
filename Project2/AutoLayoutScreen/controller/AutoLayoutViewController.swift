//
//  AutoLayoutViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {

  var label1: UILabel?
  var label2: UILabel?
  var label3: UILabel?
  
  var viewDictionary: [String:Any]?
  var metricDictionary: [String:Any]?
  
  func loadPage() {
    
    label1 = UILabel()
    label1?.backgroundColor = UIColor.red
    //Mandatory when setting Autolayout
    label1?.translatesAutoresizingMaskIntoConstraints = false
    //Before setting a constraint add the view to the parent view
    view.addSubview(label1!)
    
    label2 = UILabel()
    label2?.backgroundColor = UIColor.yellow
    //Mandatory when setting Autolayout
    label2?.translatesAutoresizingMaskIntoConstraints = false
    //Before setting a constraint add the view to the parent view
    view.addSubview(label2!)
    label3 = UILabel()
    label3?.backgroundColor = UIColor.green
    //Mandatory when setting Autolayout
    label3?.translatesAutoresizingMaskIntoConstraints = false
    //Before setting a constraint add the view to the parent view
    view.addSubview(label3!)
    
    viewDictionary = [:]
    viewDictionary!["label1"] = label1
    viewDictionary!["label2"] = label2
    viewDictionary!["label3"] = label3
    
    metricDictionary = [:]
    
    //for checking whether iPad or iPhone
    //for checking iphone 4 vs others you'll need to check with screen dimensions
    if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
      metricDictionary!["space"] = 20
      metricDictionary!["height"] = 80
    } else {
      metricDictionary!["space"] = 10
      metricDictionary!["height"] = 40
    }
  
    //NSLayoutFormatOptions till date not used
    self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-space-[label1]-space-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricDictionary, views: viewDictionary!))
    
    self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-space-[label2]-space-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricDictionary, views: viewDictionary!))
    
    self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-space-[label3]-space-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricDictionary, views: viewDictionary!))
    
    self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[label3(height)]-space-[label2(height)]-space-[label1(height)]-space-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: metricDictionary, views: viewDictionary!))
    
    
    
  }
  
  /*
  Visual String Format (VSF)
 
   | --------> Boundary of Parent View
   [] -------> Indicate a view
   () -------> indicate dimension
   -  --------> Separator
   
 */
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      view.backgroundColor = UIColor.cyan
      edgesForExtendedLayout = UIRectEdge()
      loadPage()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
