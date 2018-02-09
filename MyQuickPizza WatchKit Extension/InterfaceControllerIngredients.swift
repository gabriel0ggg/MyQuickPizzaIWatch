//
//  InterfaceControllerIngredients.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredients: WKInterfaceController {
    var myPizza:Pizza?
    
    @IBAction func setJamon(_ value: Bool) {
        myPizza!.ingredients["jamon"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setPepperoni(_ value: Bool) {
        myPizza!.ingredients["pepperoni"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setPavo(_ value: Bool) {
        myPizza!.ingredients["pavo"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setSalchicha(_ value: Bool) {
        myPizza!.ingredients["salchica"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setAceituna(_ value: Bool) {
        myPizza!.ingredients["aceituna"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setCebolla(_ value: Bool) {
        myPizza!.ingredients["cebolla"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setPimiento(_ value: Bool) {
        myPizza!.ingredients["pimiento"] = value ? true : false
        printIngredients()
    }


    @IBAction func requestPizza() {
        pushController(withName: "confirm", context: myPizza)
    }
    
    
    @IBAction func setPina(_ value: Bool) {
        myPizza!.ingredients["piña"] = value ? true : false
        printIngredients()
    }
    
    @IBAction func setAnchoa(_ value: Bool) {
        myPizza!.ingredients["anchoa"] = value ? true : false
        printIngredients()
    }
    
    func printIngredients() {
        for ingredient in myPizza!.ingredients {
            if ingredient.value {
                print (ingredient.key)
            }
        }
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        myPizza = (context as! Pizza)
        let cheese = myPizza!.cheese
        print (cheese!)
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
