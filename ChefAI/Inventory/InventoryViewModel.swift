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
    
    @Published private var inventoryModel: [FoodItem] = []
    @Published private var pendingProduct: Product?
    
    var getInventory: [FoodItem] {
            return inventoryModel
        }
    
    var getPendingProduct: Product? {
            return pendingProduct
        }
    
    func setPendingProduct(_ product: Product) {
            self.pendingProduct = product
        }
    
    func addItem(_ item: FoodItem) {
        inventoryModel.append(item)
    }
    
    func saveItem(product: ProductClass? = nil) {
        let newItem = FoodItem(id: UUID(), name: itemName,  product: product, quantity: quantity, unit: unit, expirationDate: expirationDate, category: category, purchaseDate: purchaseDate, location: location)
        addItem(newItem)
    }
    
    /*
    
    func addProductToInventory(product: Product) {
        var productClass = product.product
        var foodItem: FoodItem = FoodItem(id: product.code, name: productClass?.productName, product: productClass, quantity: 1, unit: FoodItem.Unit.box, expirationDate: Date(), category: FoodItem.Category, purchaseDate: Date(), location: FoodItem.StorageLocation.cupboard)
    }
     */
    
}
