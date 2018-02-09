//
//  Pizza.swift
//  MyQuickPizza WatchKit Extension
//
//  Created by Gabriel Guevara on 07/02/18.
//  Copyright © 2018 Gabriel Guevara. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
        var size:String=""
        var mass:String?
        var cheese:String?
    var ingredients:[String:Bool] = ["jamon":false, "pepperoni":false, "pavo":false, "salchicha":false, "aceituna":false, "cebolla":false]
    
    init(size:String, mass:String?, cheese:String?) {
        self.size = size
        self.mass = mass
        self.cheese = cheese
    }
    
    func setMass(mass:String) {
        self.mass = mass
    }
    
    func setCheese(cheese:String){
        self.cheese = cheese
    }
}
