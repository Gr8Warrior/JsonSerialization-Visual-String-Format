//
//  AppsTableViewCell.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/29/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class AppsTableViewCell: UITableViewCell {

  var iconImageView: UIImageView?
  var nameLabel: UILabel?
  var publisherNameLabel: UILabel?
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    iconImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 60, height: 60))
    self.addSubview(iconImageView!)
    nameLabel = UILabel(frame: CGRect(x: 80, y: 10, width: 210, height: 25))
    self.addSubview(nameLabel!)
    publisherNameLabel = UILabel(frame: CGRect(x: 80, y: 45, width: 210, height: 25))
    self.addSubview(publisherNameLabel!)
  }
  
  //Mostly never needed
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
