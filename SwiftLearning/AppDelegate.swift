//
//  AppDelegate.swift
//  SwiftLearning
//
//  Created by satish on 27/10/15.
//  Copyright (c) 2015 Satish. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let sTabbarController = UITabBarController()
sTabbarController.inputView?.backgroundColor = UIColor.redColor()
        let sview1 = ViewController()
        let sview2 = ViewController1()
        let sview4 = ViewController3()
        let sview3 = ViewController2()
        let scontrollers = [sview1,sview2,sview4,sview3]
        sTabbarController.viewControllers = scontrollers
        window?.rootViewController = sTabbarController
        window?.backgroundColor = UIColor.orangeColor()
//        let sfirstImage = UIImage(named: "123.png")
//        let ssecondImage = UIImage(named: "123.png")
        sview1.tabBarItem = UITabBarItem(title: "View1", image:nil , tag: 1)
        sview2.tabBarItem = UITabBarItem(title: "view2", image: nil, tag: 2)
         sview4.tabBarItem = UITabBarItem(title: "view4", image: nil, tag: 4)
          sview3.tabBarItem = UITabBarItem(title: "view3", image: nil, tag: 3)
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

