//
//  Ingredients.swift
//  Coffee-Machinator
//
//  Created by Konstantin Kovba on 9/10/19.
//  Copyright © 2019 Konstantin Kovba. All rights reserved.
//

import UIKit

enum Ingridient : Int {
    case water = 1
    case milk = 2
    case cofee = 3
    case sugar = 4
    
    func toString() -> String {
        switch self {
        case .water: return "Вода"
        case .milk: return "Молоко"
        case .cofee: return  "Кава"
        case .sugar: return "Цукор"
        }
    }
}
