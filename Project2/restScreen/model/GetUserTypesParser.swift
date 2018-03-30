//
//  GetUserTypesParser.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/30/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit
//parser for web service
class GetUserTypesParser: NSObject, URLSessionDelegate, URLSessionDownloadDelegate {
  
  var webData: Data?
  //initializing a var using closure
  var session: URLSession {
    
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

    let task = session.downloadTask(with: url!)
    
    task.resume()
 
  }
  
  func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
    /*
     do {
        try stmt1
        stmt2
        stmt3
        try stmt4
     } catch() {
     }
     */
    do {
      
      webData = try Data(contentsOf: location)
      let responseString = String(data: webData!, encoding: String.Encoding.utf8)
      print("responseString \(responseString!)")
      
      let result = try JSONSerialization.jsonObject(with: webData!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String: Any]
      
      let status = result["Status"] as! Int
      if status == 200 {
        print("success")
      }
    
    } catch {
      
    }
    
  }
}
