//
//  InventoryViewModel.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

class InventoryViewModel: NSObject, ObservableObject {
    @Published private var inventoryModel: [FoodItem] = []
    @Published private var pendingProduct: ProductClass?
    
    var getInventory: [FoodItem] {
            return inventoryModel
        }
    
    var getPendingProduct: ProductClass? {
            return pendingProduct
        }
    
    func setPendingProduct(_ product: ProductClass) {
            self.pendingProduct = product
        }
    
    func addItem(_ item: FoodItem) {
        inventoryModel.append(item)
    }
    
    
}
