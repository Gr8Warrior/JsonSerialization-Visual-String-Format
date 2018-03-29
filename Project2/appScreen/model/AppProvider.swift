//
//  AppProvider.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/29/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

class AppProvider: NSObject {

  func getApps() -> [AppModel] {
    var apps: [AppModel] = []
    
    let app1 = AppModel()
    app1.icon = UIImage(named: "home")
    app1.name = "App 1"
    app1.publisherName = "Publisher 1"
    apps.append(app1)
    
    let app2 = AppModel()
    app2.icon = UIImage(named: "gallery")
    app2.name = "App 2"
    app2.publisherName = "Publisher 2"
    apps.append(app2)
    
    let app3 = AppModel()
    app3.icon = UIImage(named: "apps")
    app3.name = "App 3"
    app3.publisherName = "Publisher 3"
    apps.append(app3)
    
    return apps
  }
  
  func getAppCategories() -> [AppCategoryModel] {

    var categories: [AppCategoryModel] = []
    
    let cat1 = AppCategoryModel()
    cat1.iconImage = UIImage(named: "home")
    cat1.name = "Home Apps "
    cat1.apps = []
    cat1.isExpand = true
    
    let app1 = AppModel()
    app1.icon = UIImage(named: "home")
    app1.name = "App 1"
    app1.publisherName = "Publisher 1"
    cat1.apps?.append(app1)
    
    let app3 = AppModel()
    app3.icon = UIImage(named: "apps")
    app3.name = "App 3"
    app3.publisherName = "Publisher 3"
    cat1.apps?.append(app3)
    categories.append(cat1)
    
    let cat2 = AppCategoryModel()
    cat2.iconImage = UIImage(named: "gallery")
    cat2.name = "Gallery Apps "
    cat2.apps = []
    cat2.isExpand = false
    
    let app2 = AppModel()
    app2.icon = UIImage(named: "gallery")
    app2.name = "App 2"
    app2.publisherName = "Publisher 2"
    cat2.apps?.append(app2)
    
    categories.append(cat2)
    
    return categories
  }
  
}
