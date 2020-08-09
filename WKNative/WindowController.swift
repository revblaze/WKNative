//
//  WindowController.swift
//  WKNative
//
//  Created by Justin Bush on 2020-08-09.
//

import Cocoa

class WindowController: NSWindowController, NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
        window!.delegate = self
        window!.titlebarAppearsTransparent = App.topBar
        window!.isMovableByWindowBackground  = !App.topBar
        window!.titleVisibility = .hidden
        window!.title = App.name
    }

}
