//
//  AppDetailViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/29/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController {

  
  init(app: AppModel) {
    super.init(nibName: nil, bundle: nil)
    let icon = UIImageView(image: app.icon!)
    view.addSubview(icon)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = UIColor.white
        edgesForExtendedLayout = UIRectEdge()
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
