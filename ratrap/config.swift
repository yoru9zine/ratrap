//
//  config.swift
//  ratrap
//
//  Created by yoru9zine on 1/21/16.
//  Copyright © 2016 yoru9zine. All rights reserved.
//

import Foundation

class Config: NSObject{
    let rawData:AnyObject
    var prefix:String
    var runOrRaises = Dictionary<String,String>()
    var focuses = Dictionary<String,String>()
    var reloads = [String]()

    init(data:AnyObject){
        self.rawData = data
        self.prefix = ""
        for (k, v) in self.rawData as! Dictionary<String, String>{
            if k == "prefix" {
                self.prefix = v
            }else if v.hasPrefix("runOrRaise ") {
                self.runOrRaises[k] = (v as NSString).substringFromIndex(11)
            }else if v.hasPrefix("focus "){
                self.focuses[k] = (v as NSString).substringFromIndex(6)
            }else if v == "reload" {
                self.reloads.append(k)
            }
        }
    }
}

func loadConfig(path:String)->Config?{
    let file = NSData(contentsOfFile: path)
    do{
        let json = try NSJSONSerialization.JSONObjectWithData(file!, options: .MutableContainers)
        return Config(data: json)
    }catch let error{
        print("failed to parse json: \(error)")
    }
    return nil
}
