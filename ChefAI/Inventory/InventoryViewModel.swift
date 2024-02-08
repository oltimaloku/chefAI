//
//  InventoryViewModel.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import Foundation

class InventoryViewModel: NSObject, ObservableObject {
    @Published private var inventoryModel: [FoodItem] = []
    
    func addItem(_ item: FoodItem) {
        inventoryModel.append(item)
    }
}
