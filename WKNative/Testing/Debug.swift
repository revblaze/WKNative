//
//  Debug.swift
//  WKNative
//
//  Created by Justin Bush on 2020-08-09.
//

import Foundation

struct Debug {
    
    static func log(_ text: String) {
        if Setup.debug { print(text) }
    }
    
}
