//
//  GetUserTypesParser.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit
//parser for web service
class GetUserTypesParser: NSObject, URLSessionDelegate {

  var webData: Data?
  //initializing a var using closure
  var session: URLSession? {
    
    let defaultConfig = URLSessionConfiguration.default
    defaultConfig.requestCachePolicy = URLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData
    
    let session1 = URLSession(configuration: defaultConfig, delegate: self, delegateQueue: nil)
    
    return session1
  }
  
  func getUserTypes() {
    /*
     1. Create a URL
     2. Create a Request
     3. Create a connection
     4. Get the response
     5. Get the data
     */
    
    let url = URL(string: "http://test.chatongo.in/api/GetUserTypes")

    let task = session?.downloadTask(with: url!)
  
  }
}
