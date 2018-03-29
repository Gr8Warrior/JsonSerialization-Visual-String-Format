//
//  AppHeaderView.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/29/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

@objc protocol AppHeaderViewDelegate: NSObjectProtocol {
  @objc optional func didHeaderSelected(_ index: Int)
}
class AppHeaderView: UIView {

  var iconImageView: UIImageView?
  var nameLabel: UILabel?
  var index: Int?
  
  weak var delegate: AppHeaderViewDelegate?
  
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
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    if delegate != nil {
      //if the delegate func is not required then use this condition
      if delegate!.responds(to: #selector(AppHeaderViewDelegate.didHeaderSelected(_:))) {
        delegate!.didHeaderSelected!(index!)
      }
    }
  }    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
