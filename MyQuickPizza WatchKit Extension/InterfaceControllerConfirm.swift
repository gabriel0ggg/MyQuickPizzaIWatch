//
//  InterfaceControllerConfirm.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerConfirm: WKInterfaceController {

    var myPizza:Pizza?
    
    @IBOutlet var lblPizza: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        myPizza = (context as! Pizza)
        let size = myPizza!.size
        let mass = myPizza!.mass
        let cheese = myPizza!.cheese
        
        var ingredients:String=""
        for ingredient in myPizza!.ingredients {
            if ingredient.value {
                ingredients += " " + ingredient.key
            }
        }
        
        lblPizza.setText("¿Desea ordenar la pizza con el tamaño \(size) con masa \(mass) con \(cheese) con los ingredientes de \(ingredients)")
        
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
