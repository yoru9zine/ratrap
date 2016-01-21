//
//  keys.swift
//  ratrap
//
//  Created by yoru9zine on 1/20/16.
//  Copyright © 2016 yoru9zine. All rights reserved.
//

import Foundation
import Carbon

let keyStr2Code = [
    "A": kVK_ANSI_A,
    "S": kVK_ANSI_S,
    "D": kVK_ANSI_D,
    "F": kVK_ANSI_F,
    "H": kVK_ANSI_H,
    "G": kVK_ANSI_G,
    "Z": kVK_ANSI_Z,
    "X": kVK_ANSI_X,
    "C": kVK_ANSI_C,
    "V": kVK_ANSI_V,
    "B": kVK_ANSI_B,
    "Q": kVK_ANSI_Q,
    "W": kVK_ANSI_W,
    "E": kVK_ANSI_E,
    "R": kVK_ANSI_R,
    "Y": kVK_ANSI_Y,
    "T": kVK_ANSI_T,
    "1": kVK_ANSI_1,
    "2": kVK_ANSI_2,
    "3": kVK_ANSI_3,
    "4": kVK_ANSI_4,
    "5": kVK_ANSI_5,
    "6": kVK_ANSI_6,
    "7": kVK_ANSI_7,
    "8": kVK_ANSI_8,
    "9": kVK_ANSI_9,
    "0": kVK_ANSI_0,
    "=": kVK_ANSI_Equal,
    "-": kVK_ANSI_Minus,
    "]": kVK_ANSI_RightBracket,
    "O": kVK_ANSI_O,
    "U": kVK_ANSI_U,
    "[": kVK_ANSI_LeftBracket,
    "I": kVK_ANSI_I,
    "P": kVK_ANSI_P,
    "L": kVK_ANSI_L,
    "J": kVK_ANSI_J,
    "'": kVK_ANSI_Quote,
    "K": kVK_ANSI_K,
    ":": kVK_ANSI_Semicolon,
    "\\": kVK_ANSI_Backslash,
    ",": kVK_ANSI_Comma,
    "/": kVK_ANSI_Slash,
    "N": kVK_ANSI_N,
    "M": kVK_ANSI_M,
    ".": kVK_ANSI_Period,
    "`": kVK_ANSI_Grave,
    "RETURN": kVK_Return,
    "ENTER": kVK_Return,
    "TAB": kVK_Tab,
    "SPACE": kVK_Space,
    "SPC": kVK_Space,
    "DELETE": kVK_Delete,
    "DEL": kVK_Delete,
    "ESCAPE": kVK_Escape,
    "ESC": kVK_Escape,
    "CAPS": kVK_CapsLock,
    "FUNCTION": kVK_Function,
    "FUNC": kVK_Function,
    "F17": kVK_F17,
    "F18": kVK_F18,
    "F19": kVK_F19,
    "F20": kVK_F20,
    "F5": kVK_F5,
    "F6": kVK_F6,
    "F7": kVK_F7,
    "F3": kVK_F3,
    "F8": kVK_F8,
    "F9": kVK_F9,
    "F11": kVK_F11,
    "F13": kVK_F13,
    "F16": kVK_F16,
    "F14":kVK_F14,
    "F10": kVK_F10,
    "F12": kVK_F12,
    "F15": kVK_F15,
    "HELP": kVK_Help,
    "HOME": kVK_Home,
    "PAGEUP": kVK_PageUp,
    "PAGEDOWN": kVK_PageDown,
    "F4": kVK_F4,
    "END": kVK_End,
    "F2": kVK_F2,
    "F1": kVK_F1,
    "LEFT": kVK_LeftArrow,
    "RIGHT": kVK_RightArrow,
    "DOWN": kVK_DownArrow,
    "UP": kVK_UpArrow,
]

let keymap = [
    kVK_ANSI_A: "A",
    kVK_ANSI_S: "S",
    kVK_ANSI_D: "D",
    kVK_ANSI_F: "F",
    kVK_ANSI_H: "H",
    kVK_ANSI_G: "G",
    kVK_ANSI_Z: "Z",
    kVK_ANSI_X: "X",
    kVK_ANSI_C: "C",
    kVK_ANSI_V: "V",
    kVK_ANSI_B: "B",
    kVK_ANSI_Q: "Q",
    kVK_ANSI_W: "W",
    kVK_ANSI_E: "E",
    kVK_ANSI_R: "R",
    kVK_ANSI_Y: "Y",
    kVK_ANSI_T: "T",
    kVK_ANSI_1: "1",
    kVK_ANSI_2: "2",
    kVK_ANSI_3: "3",
    kVK_ANSI_4: "4",
    kVK_ANSI_6: "6",
    kVK_ANSI_5: "5",
    kVK_ANSI_Equal: "=",
    kVK_ANSI_9: "9",
    kVK_ANSI_7: "7",
    kVK_ANSI_Minus: "-",
    kVK_ANSI_8: "8",
    kVK_ANSI_0: "0",
    kVK_ANSI_RightBracket: "]",
    kVK_ANSI_O: "O",
    kVK_ANSI_U: "U",
    kVK_ANSI_LeftBracket: "[",
    kVK_ANSI_I: "I",
    kVK_ANSI_P: "P",
    kVK_ANSI_L: "L",
    kVK_ANSI_J: "J",
    kVK_ANSI_Quote: "'",
    kVK_ANSI_K: "K",
    kVK_ANSI_Semicolon: ":",
    kVK_ANSI_Backslash: "\\",
    kVK_ANSI_Comma: ",",
    kVK_ANSI_Slash: "/",
    kVK_ANSI_N: "N",
    kVK_ANSI_M: "M",
    kVK_ANSI_Period: ".",
    kVK_ANSI_Grave: "`",
    kVK_ANSI_KeypadDecimal: "KP .",
    kVK_ANSI_KeypadMultiply: "KP *",
    kVK_ANSI_KeypadPlus: "KP +",
    kVK_ANSI_KeypadClear: "KP Clear",
    kVK_ANSI_KeypadDivide: "KP /",
    kVK_ANSI_KeypadEnter: "KP Enter",
    kVK_ANSI_KeypadMinus: "KP -",
    kVK_ANSI_KeypadEquals: "KP =",
    kVK_ANSI_Keypad0: "KP0",
    kVK_ANSI_Keypad1: "KP1",
    kVK_ANSI_Keypad2: "KP2",
    kVK_ANSI_Keypad3: "KP3",
    kVK_ANSI_Keypad4: "KP4",
    kVK_ANSI_Keypad5: "KP5",
    kVK_ANSI_Keypad6: "KP6",
    kVK_ANSI_Keypad7: "KP7",
    kVK_ANSI_Keypad8: "KP8",
    kVK_ANSI_Keypad9: "KP9",
    kVK_Return: "Return",
    kVK_Tab: "Tab",
    kVK_Space: "Space",
    kVK_Delete: "Delete",
    kVK_Escape: "Escape",
    kVK_Command: "Command",
    kVK_Shift: "Shift",
    kVK_CapsLock: "CapsLock",
    kVK_Option: "Option",
    kVK_Control: "Control",
    kVK_RightShift: "Right Shift",
    kVK_RightOption: "Right Option",
    kVK_RightControl: "Right Control",
    kVK_Function: "Function",
    kVK_F17: "F17",
    kVK_VolumeUp: "VolUp",
    kVK_VolumeDown: "VolDown",
    kVK_Mute: "Mute",
    kVK_F18: "F18",
    kVK_F19: "F19",
    kVK_F20: "F20",
    kVK_F5: "F5",
    kVK_F6: "F6",
    kVK_F7: "F7",
    kVK_F3: "F3",
    kVK_F8: "F8",
    kVK_F9: "F9",
    kVK_F11: "F11",
    kVK_F13: "F13",
    kVK_F16: "F16",
    kVK_F14: "F14",
    kVK_F10: "F10",
    kVK_F12: "F12",
    kVK_F15: "F15",
    kVK_Help: "Help",
    kVK_Home: "Home",
    kVK_PageUp: "PageUp",
    kVK_ForwardDelete: "ForwardDelete",
    kVK_F4: "F4",
    kVK_End: "End",
    kVK_F2: "F2",
    kVK_PageDown: "PageDown",
    kVK_F1: "F1",
    kVK_LeftArrow: "LeftArrow",
    kVK_RightArrow: "RightArrow",
    kVK_DownArrow: "DownArrow",
    kVK_UpArrow: "UpArrow",
    kVK_ISO_Section: "Section",
    kVK_JIS_Yen: "Yen",
    kVK_JIS_Underscore: "_",
    kVK_JIS_KeypadComma: "KP,",
    kVK_JIS_Eisu: "Eisu",
    kVK_JIS_Kana: "Kana",
]

let keyStr2Mod = [
    "COMMAND": cmdKey,
    "CMD": cmdKey,
    "SHIFT": shiftKey,
    "OPTION": optionKey,
    "OPT": optionKey,
    "CONTROL": controlKey,
    "CTRL": controlKey,
]
let modifiers = [
    0,
    cmdKey,
    shiftKey,
    optionKey,
    controlKey,
    cmdKey|shiftKey,
    cmdKey|optionKey,
    cmdKey|controlKey,
    shiftKey|optionKey,
    shiftKey|controlKey,
    optionKey|controlKey,
    cmdKey|shiftKey|optionKey,
    cmdKey|shiftKey|controlKey,
    cmdKey|optionKey|controlKey,
    shiftKey|optionKey|controlKey,
    cmdKey|shiftKey|optionKey|controlKey,
]

class Key: NSObject{
    var code:Int
    var modifier:Int
    var hotKeyRef:UnsafeMutablePointer<EventHotKeyRef>
    var isPrefix:Bool
    var sigStr:String
    init(code:Int, modifier:Int, sigStr:String){
        self.code = code
        self.modifier = modifier
        self.hotKeyRef = nil
        self.isPrefix = false
        self.sigStr = sigStr
    }
    
    func signature() -> OSType{
        var result : UInt = 0
        if let data = self.sigStr.dataUsingEncoding(NSMacOSRomanStringEncoding) {
            let bytes = UnsafePointer<UInt8>(data.bytes)
            for i in 0..<data.length {
                result = result << 8 + UInt(bytes[i])
            }
        }
        return OSType(result)
    }

    func getStr()->String{
        return keymap[self.code]!
    }
    
    func install(ratrap:Ratrap){
        let keyCode = UInt16(self.code)
        var gMyHotKeyID = EventHotKeyID()
        gMyHotKeyID.signature = self.signature()
        gMyHotKeyID.id = UInt32(keyCode)
        
        let hotKeyRef = UnsafeMutablePointer<EventHotKeyRef>.alloc(1)
        let status = RegisterEventHotKey(UInt32(keyCode), UInt32(self.modifier), gMyHotKeyID, GetApplicationEventTarget(), 0, hotKeyRef)
        if status != 0 {
            print("RegisterEventHotKey failed: \(status)")
            return
        }
        self.hotKeyRef = hotKeyRef
    }
    
    func uninstall(){
        if self.hotKeyRef == nil{
            return
        }
        let ref = self.hotKeyRef.memory
        let status = UnregisterEventHotKey(ref)
        if status != 0 {
            print("UnregisterEventHotKey failed: \(status)")
        }
        self.hotKeyRef.dealloc(1)
        self.hotKeyRef = nil
    }

    func isMatchKey(str:String)->Bool{
        var chars = str.characters.split("-").map{String($0)}
        if chars.isEmpty {
            return false
        }
        let key = chars.removeLast()
        if keyStr2Code[key.uppercaseString] != self.code {
            return false
        }
        var modmask:Int = 0
        while !chars.isEmpty {
            let mod = chars.removeLast()
            modmask |= keyStr2Mod[mod.uppercaseString]!
        }
        if modmask != self.modifier {
            return false
        }
        return true
    }
}


