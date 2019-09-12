//
//  CoffeMachine.swift
//  Coffee-Machinator
//
//  Created by Konstantin Kovba on 9/10/19.
//  Copyright © 2019 Konstantin Kovba. All rights reserved.
//

import UIKit

class Machine: NSObject {
    private var products = Dictionary<Ingridient,Int>()
    private var cookBook = Dictionary<Drink,Dictionary<Ingridient,Int>>()
    
    private func fillMachineCookBooks(){
        var espresoIngrifdients  = Dictionary<Ingridient,Int>()
        espresoIngrifdients[.cofee] = 10
        espresoIngrifdients[.sugar] = 10
        espresoIngrifdients[.water] = 100
        cookBook[.espresso] = espresoIngrifdients
        
        var capucinoIngrifdients  = Dictionary<Ingridient,Int>()
        capucinoIngrifdients[.cofee] = 15
        capucinoIngrifdients[.sugar] = 15
        capucinoIngrifdients[.water] = 200
        cookBook[.capucino] = capucinoIngrifdients
        
        var latteIngrifdients  = Dictionary<Ingridient,Int>()
        latteIngrifdients[.cofee] = 10
        latteIngrifdients[.sugar] = 10
        latteIngrifdients[.water] = 200
        latteIngrifdients[.milk] = 50
        cookBook[.latte] = latteIngrifdients
    }
    
    override init() {
        super.init()
        fillMachineCookBooks()
    }
    
    func addToMachine(ingridient : Ingridient, count :Int) -> String {
        let oldVal = products[ingridient] ?? 0
        products[ingridient] =  oldVal + count
        return "В апараті \(products[ingridient]!) грам \(ingridient.toString())"
    }
    
    func makeDrink(drink : Drink) -> String {
        if let ingridients = cookBook[drink]{
            
            // control products in coffeMachine
            for (ingridient,ingridientNeedCount) in ingridients {
                let productCount = products[ingridient] ?? 0
                if (productCount<ingridientNeedCount){
                    return "Не можливо приготувати \(drink.toString()) немає \(ingridient.toString())"
                }
            }
            
            // make the drink
            for (ingridient,ingridientNeedCount) in ingridients {
                let productCount = products[ingridient]!
                products[ingridient] = productCount - ingridientNeedCount
            }
            
            return "Ваш напій \(drink.toString()) готовий"
        } else {
            return "Цей апарат не вміє готовити \(drink.toString())"
        }
        
    }
    
    
    
}
