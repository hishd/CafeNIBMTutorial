//
//  CartHandler.swift
//  CafeNIBMNew
//
//  Created by Hishara Dilshan on 2021-04-12.
//

import Foundation

class CartHandler {
    static var foodItems: [FoodItem] = []
    
    static func getCartItems() -> [FoodItem] {
        return foodItems
    }
    
    static func clearCart() {
        self.foodItems.removeAll()
    }
}
