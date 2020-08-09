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
    
    // WebView Observers
    var webViewTitleObserver: NSKeyValueObservation?        // Observer for Web Player Title
    var webViewURLObserver: NSKeyValueObservation?          // Observer for Web Player URL
    var webViewProgressObserver: NSKeyValueObservation?     // Observer for Web Player Progress
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK:- WebView Setup
    
    func initWebView() {
        webView.navigationDelegate = self
        webView.uiDelegate = self
        webView.setValue(false, forKey: "drawsBackground")      // Hide WebView Background
        webView.allowsLinkPreview = false                       // Disable Link Previews
        webView.allowsMagnification = false                     // Disable Magnification (CSS Handled)
        webView.allowsBackForwardNavigationGestures = true      // Disable Back-Forward Navigation
        webView.customUserAgent = Client.userAgent              // WebView Browser UserAgent
        // WebKit Preferences & Configuration
        let preferences = WKPreferences()                       // WebKit Preferences
        preferences.javaScriptEnabled = true                    // Enable JavaScript
        preferences.javaScriptCanOpenWindowsAutomatically = true
        let configuration = WKWebViewConfiguration()            // WebKit Configuration
        configuration.preferences = preferences
        configuration.allowsAirPlayForMediaPlayback = true      // Enable WebKit AirPlay
        configuration.applicationNameForUserAgent = Client.name // App Name
        let webController = WKUserContentController()
        webView.configuration.userContentController = webController
        
        //webView.load(User.service.url)
        webView.load(Service.apple.url)
        
    }
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

