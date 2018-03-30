//
//  AppDelegate.swift
//  Project2
//
//  Created by Shailendra Suriyal on 3/28/18.
//  Copyright © 2018 intimetec. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var baseController: UITabBarController?
  
  func createTabs() {
    
    var tabControllers: [UIViewController] = []
    
    //... is full range or ..> or ..< is half range
    for i in 0..<4 {
      
      var tabController: UIViewController!
      var subController: UINavigationController!
      
      switch i {
        
      case 0:
        tabController = ViewController()
        subController = UINavigationController(rootViewController: tabController)
        subController.tabBarItem.image = UIImage(named: "home")
        subController.tabBarItem.title = "Home"
        subController.navigationBar.topItem?.title = "Home"
        
      case 1:
        tabController = GalleryViewController()
        subController = UINavigationController(rootViewController: tabController)
        subController.tabBarItem.image = UIImage(named: "gallery")
        subController.tabBarItem.title = "Gallery"
        subController.navigationBar.topItem?.title = "Gallery"
        
      case 2:
        tabController = AppsViewController()
        subController = UINavigationController(rootViewController: tabController)
        subController.tabBarItem.image = UIImage(named: "apps")
        subController.tabBarItem.title = "Apps"
        subController.navigationBar.topItem?.title = "App List"
        
      case 3:
        tabController = AutoLayoutViewController()
        subController = UINavigationController(rootViewController: tabController)
        subController.tabBarItem.image = UIImage(named: "apps")
        subController.tabBarItem.title = "AutoLayout"
        subController.navigationBar.topItem?.title = "Autolayout"
        
      default:
        tabController = nil
      }
      
      tabControllers.append(subController)
    
    }
    
    baseController = UITabBarController()
    baseController!.viewControllers = tabControllers
  }


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    createTabs()
    
    window?.rootViewController = baseController
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

