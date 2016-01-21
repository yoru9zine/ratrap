//
//  action.swift
//  ratrap
//
//  Created by yoru9zine on 1/20/16.
//  Copyright © 2016 yoru9zine. All rights reserved.
//

import Foundation
import Cocoa

class Action: NSObject{
    func start(ratrap:Ratrap)->Int{
        print("action")
        return 0
    }
}

class LaunchAppAction: Action{
    let appName:String
    init(appName:String){
        self.appName = appName
    }
    override func start(ratrap:Ratrap)->Int{
        print("launch \(self.appName)")
        NSWorkspace.sharedWorkspace().launchApplication(self.appName)
        return 0
    }
}

class ReloadAction: Action{
    override func start(ratrap:Ratrap)->Int{
        print("reloading configuration")
        ratrap.restart()
        print("reload finished")
        return 1
    }
}

class FocusAction: Action{
    let target:String
    init(target:String){
        self.target = target
    }
    override func start(ratrap:Ratrap)->Int{
        print("focus \(self.target)")
        if self.target == "last"{
            ratrap.lastApp?.activateWithOptions(.ActivateIgnoringOtherApps)
        }
        return 0
    }
}
