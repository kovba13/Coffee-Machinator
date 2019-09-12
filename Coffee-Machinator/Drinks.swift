//
//  Drinks.swift
//  Coffee-Machinator
//
//  Created by Konstantin Kovba on 9/10/19.
//  Copyright © 2019 Konstantin Kovba. All rights reserved.
//

import UIKit

enum Drink : Int {
    case espresso = 1
    case capucino = 2
    case latte = 3
    
    func toString() -> String{
        switch (self) {
        case .espresso: return "Еспрессо"
        case .capucino: return "Капучіно"
        case .latte: return "Латте"
        }
    }
}
