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
        FoodItem(id: "9", name: "Bell Peppers", quantity: 3, unit: .unit, expirationDate: Date(), category: .vegetables, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "10", name: "Cheddar Cheese", quantity: 200, unit: .gram, expirationDate: Date(), category: .dairy, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "11", name: "Whole Chicken", quantity: 1, unit: .kilogram, expirationDate: Date(), category: .meats, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "12", name: "Brown Rice", quantity: 500, unit: .gram, expirationDate: Date(), category: .grains, purchaseDate: Date(), location: .pantry),
        FoodItem(id: "13", name: "Carrots", quantity: 5, unit: .unit, expirationDate: Date(), category: .vegetables, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "14", name: "Apples", quantity: 6, unit: .unit, expirationDate: Date(), category: .fruits, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "15", name: "Butter", quantity: 1, unit: .pack, expirationDate: Date(), category: .dairy, purchaseDate: Date(), location: .fridge),
        FoodItem(id: "16", name: "Almonds", quantity: 250, unit: .gram, expirationDate: Date(), category: .snacks, purchaseDate: Date(), location: .pantry)

    ]
    
    static var recipes: [Recipe] = [
        Recipe(id: "1", name: "PB & J Sandwich", ingredients: MockData.foodItems, instructions: "Get 2 pieces of bread. Spread peanut butter on one side. Spread jelly on the other side.", time: "60"),
        Recipe(id: "2", name: "Roasted Chicken with Vegetables", ingredients: [MockData.foodItems[2], MockData.foodItems[0], MockData.foodItems[8], MockData.foodItems[12]], instructions: "Season the chicken and vegetables. Roast at 350°F for 1.5 hours.", time: "90"),
        Recipe(id: "3", name: "Cheesy Omelet", ingredients: [MockData.foodItems[1], MockData.foodItems[9]], instructions: "Whisk eggs and pour into a skillet. Add cheese before folding.", time: "10"),
        Recipe(id: "4", name: "Vegetable Stir Fry", ingredients: [MockData.foodItems[0], MockData.foodItems[7], MockData.foodItems[8]], instructions: "Sauté all vegetables in a pan. Serve over cooked brown rice.", time: "20"),
        Recipe(id: "5", name: "Apple Almond Salad", ingredients: [MockData.foodItems[13], MockData.foodItems[15]], instructions: "Mix sliced apples and almonds with greens. Dress with vinaigrette.", time: "15")
        
    ]
}
