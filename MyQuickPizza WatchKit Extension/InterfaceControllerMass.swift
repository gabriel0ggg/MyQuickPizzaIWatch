//
//  InterfaceControllerMass.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMass: WKInterfaceController {
    var myPizza:Pizza?
    
    @IBAction func requestDelgada() {
        myPizza?.setMass(mass: "Delgada")
        pushController(withName: "cheese", context: myPizza)
    }
    
    @IBAction func requestCrujiente() {
        myPizza?.setMass(mass: "Crujiente")
        pushController(withName: "cheese", context: myPizza)
    }
    
    @IBAction func requestGruesa() {
        myPizza?.setMass(mass: "Gruesa")
        pushController(withName: "cheese", context: myPizza)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        myPizza = (context as! Pizza)
        let size = myPizza!.size
        print (size)
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
