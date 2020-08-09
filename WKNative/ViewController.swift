//
//  ViewController.swift
//  WKNative
//
//  Created by Justin Bush on 2020-08-09.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!                  // Main WebView
    @IBOutlet weak var titleBar: NSTextField!               // Main Window Title
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!   // Top Window Constraint
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

