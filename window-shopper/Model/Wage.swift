//
//  Wage.swift
//  window-shopper
//
//  Created by Takhmina Talipova on 7/20/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}

