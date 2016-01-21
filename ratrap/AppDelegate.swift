//
//  AppDelegate.swift
//  ratrap
//
//  Created by yoru9zine on 1/19/16.
//  Copyright © 2016 yoru9zine. All rights reserved.
//

import Cocoa
import Carbon

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var ratrap:Ratrap?
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        self.ratrap = Ratrap()
        self.ratrap!.start()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
}
