//
//  InventoryViewModel.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

class InventoryViewModel: NSObject, ObservableObject {
    @Published var itemName: String = ""
    @Published var quantity: Int = 0
    @Published var unit: FoodItem.Unit = .piece
    @Published var expirationDate: Date = Date()
    @Published var category: FoodItem.Category = .fruits
    @Published var purchaseDate: Date = Date()
    @Published var location: FoodItem.StorageLocation = .pantry
    
    @Published private var inventoryModel: [FoodItem] = MockData.foodItems
    @Published private var pendingProduct: Product?
    private var nextId: Int = 9
    
    var getInventory: [FoodItem] {
        return inventoryModel
    }
    
    var getPendingProduct: Product? {
        return pendingProduct
    }
    
    func setPendingProduct(_ product: Product) {
        self.pendingProduct = product
        if let productName = product.product?.productName {
            itemName = productName
        }
        
    }
    
    func addItem(_ item: FoodItem) {
        inventoryModel.append(item)
    }
    
    func saveItem() {
        if let pendingProduct = pendingProduct{
            let newItem = FoodItem(id: pendingProduct.code, name: itemName,  product: pendingProduct.product, quantity: quantity, unit: unit, expirationDate: expirationDate, category: category, purchaseDate: purchaseDate, location: location)
            addItem(newItem)
        } else {
            let newItem = FoodItem(id: String(nextId), name: itemName, quantity: quantity, unit: unit, expirationDate: expirationDate, category: category, purchaseDate: purchaseDate, location: location)
            nextId += 1
            addItem(newItem)
        }
    }
}
