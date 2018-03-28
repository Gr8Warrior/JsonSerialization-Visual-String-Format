//
//  GalleryViewController.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/28/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

  var iconImageView: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = UIColor.yellow
      loadIconImage()
        // Do any additional setup after loading the view.
    }
  
  func loadIconImage() {
    let image = UIImage(named: "gallery") // default extension for image is PNG
    iconImageView = UIImageView(image: image)
    //    iconImageView?.frame.origin.x = 90
    //    iconImageView?.frame.origin.y = 190
    iconImageView?.center = CGPoint(x: 100, y: 200)// iphone 45 320 *568
    self.view.addSubview(iconImageView!)
    
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
