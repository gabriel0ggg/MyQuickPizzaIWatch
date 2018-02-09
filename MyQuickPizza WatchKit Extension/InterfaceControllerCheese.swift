//
//  InterfaceControllerCheese.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceControllerCheese: WKInterfaceController {
    var myPizza:Pizza?

    @IBAction func requestMozzarela() {
        myPizza?.setCheese(cheese: "Mozzarela")
        pushController(withName: "ingredients", context: myPizza)
    }
    
    @IBAction func requestCheddar() {
        myPizza?.setCheese(cheese: "Cheddar")
        pushController(withName: "ingredients", context: myPizza)
    }
    
    @IBAction func requestParmesano() {
        myPizza?.setCheese(cheese: "Parmesano")
        pushController(withName: "ingredients", context: myPizza)
    }
    
    @IBAction func requestWithout() {
        myPizza?.setCheese(cheese: "Sin queso")
        pushController(withName: "ingredients", context: myPizza)
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        myPizza = (context as! Pizza)
        let mass = myPizza!.mass
        print (mass!)
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
