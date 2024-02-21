//
//  MockData.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import Foundation

class MockData {
    static var foodItems: [FoodItem] = [
        FoodItem(id: "1", name: "Tomatoes", quantity: 5, unit: FoodItem.Unit.unit, expirationDate: Date(), category: FoodItem.Category.vegetables, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        FoodItem(id: "2", name: "Eggs", quantity: 15, unit: FoodItem.Unit.unit, expirationDate: Date(), category: FoodItem.Category.protein, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        FoodItem(id: "3", name: "Steak", quantity: 2, unit: FoodItem.Unit.pound, expirationDate: Date(), category: FoodItem.Category.meats, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        FoodItem(id: "4", name: "Oatmeal", quantity: 1, unit: FoodItem.Unit.pack, expirationDate: Date(), category: FoodItem.Category.grains, purchaseDate: Date(), location: FoodItem.StorageLocation.pantry),
        FoodItem(id: "5", name: "Milk", quantity: 4, unit: FoodItem.Unit.liter, expirationDate: Date(), category: FoodItem.Category.dairy, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        FoodItem(id: "6", name: "Jalepeno", quantity: 2, unit: FoodItem.Unit.piece, expirationDate: Date(), category: FoodItem.Category.vegetables, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        FoodItem(id: "7", name: "Potatoes", quantity: 10, unit: FoodItem.Unit.pound, expirationDate: Date(), category: FoodItem.Category.vegetables, purchaseDate: Date(), location: FoodItem.StorageLocation.pantry),
        FoodItem(id: "8", name: "Cucumber", quantity: 5, unit: FoodItem.Unit.unit, expirationDate: Date(), category: FoodItem.Category.vegetables, purchaseDate: Date(), location: FoodItem.StorageLocation.fridge),
        
    ]
}
