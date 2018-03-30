//
//  UserTypeModel.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class UserTypeModel: NSObject {
  
  var UserTypeId: String?
  var UserTypeName: String?
  var Tax: Int?
  
  init(dictionary: [String: Any]) {
     UserTypeId = dictionary["UserTypeId"]! as? String
     UserTypeName = dictionary["UserTypeName"]! as? String
     Tax = dictionary["Tax"]! as? Int
  }

}
