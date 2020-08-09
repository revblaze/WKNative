//
//  WKType.swift
//  WKNative
//
//  Created by Justin Bush on 2020-08-09.
//

import Foundation

enum WKType {
    
    case local
    case web
    
    var content: String {
        switch self {
        case .local: return
        }
    }
    
}
