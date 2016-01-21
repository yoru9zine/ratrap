//
//  ratrap.swift
//  ratrap
//
//  Created by yoru9zine on 1/19/16.
//  Copyright © 2016 yoru9zine. All rights reserved.
//

import Foundation

import Cocoa
import Carbon

func keyEventHandler(nextHandler : EventHandlerCallRef, theEvent: EventRef, userData: UnsafeMutablePointer<Void>) -> OSStatus{
    var myself:Ratrap? = unsafeBitCast(userData, Ratrap.self)
    var hkCom = EventHotKeyID()
    GetEventParameter(theEvent, EventParamName(kEventParamDirectObject), EventParamType(typeEventHotKeyID), nil, sizeof(EventHotKeyID), nil, &hkCom)

    let act = myself!.actions[hkCom.signature]
    let key = myself!.keys[hkCom.signature]
    if !key!.isPrefix {
        if act != nil{
            if act!.start(myself!) != 0{
                return 0
            }
        }
    }

    myself!.setPrefixMode(!myself!.prefixed)
    myself = nil
    return 0
}

class Ratrap: NSObject {
    var sig:UInt32 = 1
    var keys = Dictionary<OSType, Key>()
    var actions = Dictionary<OSType, Action>()
    var prefixed = false
    var prefixKey:Key?
    var lastApp:NSRunningApplication?

    override init(){
        super.init()
        NSWorkspace.sharedWorkspace().notificationCenter.addObserver(self, selector: "handleAppSwitch:", name:nil, object:nil)
        
        var eventType = EventTypeSpec()
        eventType.eventClass = OSType(kEventClassKeyboard)
        eventType.eventKind = OSType(kEventHotKeyPressed)
        
        let selfRef: UnsafeMutablePointer<Void> = unsafeBitCast(self, UnsafeMutablePointer<Void>.self)
        InstallEventHandler(GetApplicationEventTarget(), keyEventHandler, 1, &eventType, selfRef, nil)
    }
    
    func handleAppSwitch(n:NSNotification?){
        if n!.name == "NSWorkspaceDidDeactivateApplicationNotification"{
            self.lastApp = n?.userInfo![NSWorkspaceApplicationKey] as? NSRunningApplication
        }
    }
    
    func start(){
        let conf = loadConfig("\(NSHomeDirectory())/ratrap.json")
        for (code, _) in keymap {
            for mod in modifiers {
                let k = Key(code:code, modifier:mod, sigStr: String(sig++))
                // setup prefix key
                if k.isMatchKey((conf?.prefix)!){
                    self.prefixKey = k
                    k.install(self)
                    k.isPrefix = true
                }
                // setup run or raise handlers
                for (candKey, app) in (conf?.runOrRaises)!{
                    if k.isMatchKey(candKey){
                        self.actions[k.signature()] = LaunchAppAction(appName: app)
                    }
                }
                // setup focus handlers
                for (candKey, target) in (conf?.focuses)!{
                    if k.isMatchKey(candKey){
                        self.actions[k.signature()] = FocusAction(target: target)
                    }
                }
                // setup reload handlers
                for candKey in (conf?.reloads)!{
                    if k.isMatchKey(candKey) {
                        self.actions[k.signature()] = ReloadAction()
                    }
                }
                self.keys[k.signature()] = k
            }
        }
    }

    func stop(){
        self.prefixKey?.uninstall()
        self.actions.removeAll()
        self.keys.removeAll()
        self.prefixKey = nil
        self.sig = 1
    }

    func restart(){
        self.stop()
        self.start()
    }

    func setupKey(key:Key, action:Action){
        self.keys[key.signature()] = key
        self.actions[key.signature()] = action
        key.install(self)
    }

    func setPrefixMode(b:Bool){
        if self.prefixed == b {
            return
        }

        if self.prefixed {
            for (_, key) in self.keys{
                if key == self.prefixKey {
                    key.isPrefix = true
                }else{
                    key.uninstall()
                }
            }
        }else{
            for (_, key)in self.keys{
                if key == self.prefixKey {
                    key.isPrefix = false
                }else{
                    key.install(self)
                }
            }
        }
        self.prefixed = b
        print("prefix to \(b)")
    }

    func debug(){
        for (sig, key) in self.keys {
            print(sig, key)
        }
    }

}


