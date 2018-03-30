//
//  RestServiceViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

/*
 1. Create an agent (model) class
 2. Implement agent purpose
  2.1 get the data from the server
  2.2 process the server
 3. create a container(Optional)
 4. Create a pure model class or classes(optional)
 5. Implement feedback mechanism
*/

class RestServiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = UIColor.white
      edgesForExtendedLayout = UIRectEdge()

        // Do any additional setup after loading the view.
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
