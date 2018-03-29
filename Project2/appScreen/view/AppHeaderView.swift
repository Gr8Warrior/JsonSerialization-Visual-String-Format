//
//  AppHeaderView.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/29/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class AppHeaderView: UIView {

  var iconImageView: UIImageView?
  var nameLabel: UILabel?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    backgroundColor = UIColor.cyan
    iconImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
    addSubview(iconImageView!)
    
    nameLabel = UILabel(frame: CGRect(x: 60, y: 10, width: 230, height: 40))
    nameLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
    addSubview(nameLabel!)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
