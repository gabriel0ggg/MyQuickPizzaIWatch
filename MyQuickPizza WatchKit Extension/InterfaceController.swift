//
//  InterfaceController.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBAction func requestChica() {
        let myPizza = Pizza(size:"Chica", mass:nil, cheese:nil)
        pushController(withName: "mass", context: myPizza)
    }
    
    @IBAction func requestMediana() {
        let myPizza = Pizza(size:"Mediana", mass:nil, cheese:nil)
        pushController(withName: "mass", context: myPizza)
    }
    
    @IBAction func requestGrande() {
        let myPizza = Pizza(size:"Grande", mass:nil, cheese:nil)
        pushController(withName: "mass", context: myPizza)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
