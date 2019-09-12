//
//  ViewController.swift
//  Coffee-Machinator
//
//  Created by Konstantin Kovba on 9/10/19.
//  Copyright © 2019 Konstantin Kovba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messegeScreen: UILabel!
    let machine = Machine.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func makeDrinks(_ sender: UIButton) {
        if let value = Drink.init(rawValue: sender.tag){
            messegeScreen.text = machine.makeDrink(drink: value)
        }
    
    }
    
    @IBAction func addProducts(_ sender: UIButton) {
        if let value = Ingridient.init(rawValue: sender.tag){
            messegeScreen.text = machine.addToMachine(ingridient: value, count: 190)
        }
    }
    

}

