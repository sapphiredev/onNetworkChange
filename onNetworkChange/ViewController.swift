//
//  ViewController.swift
//  onNetworkChange
//
//  Created by sapphire on 31/05/2019.
//  Copyright © 2019 sapphire. All rights reserved.
//

import Cocoa
import CoreWLAN

class ViewController: NSViewController {
    @IBOutlet weak var ssidLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let interface = CWWiFiClient.shared().interface() else {
            ssidLabel.stringValue = "1111"
            return;
        }
        
        ssidLabel.stringValue = interface.ssid() ?? "1112";

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

