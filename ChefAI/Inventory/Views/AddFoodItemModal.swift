//
//  AddFoodItemModalView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import SwiftUI

struct AddFoodItemModal: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: InventoryViewModel
    
    @State private var itemName: String = ""
    @State private var quantity: Int = 0
    @State private var unit: FoodItem.Unit = .piece
    @State private var expirationDate: Date = Date()
    @State private var category: FoodItem.Category = .fruits
    @State private var purchaseDate: Date = Date()
    @State private var location: FoodItem.StorageLocation = .pantry
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Item")) {
                    TextField("Item Name", text: $itemName)
                    Stepper(value: $quantity, in: 1...100) {
                        Text("Quantity: \(quantity)")
                    }
                    Picker("Unit", selection: $unit) {
                        ForEach(FoodItem.Unit.allCases, id: \.self) { unit in
                            Text(unit.displayName).tag(unit)
                        }
                    }
                    Picker("Category", selection: $category) {
                        ForEach(FoodItem.Category.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                    Picker("Storage Location", selection: $location) {
                        ForEach(FoodItem.StorageLocation.allCases, id: \.self) { location in
                            Text(location.rawValue).tag(location)
                        }
                    }
                    DatePicker("Expiration Date", selection: $expirationDate, displayedComponents: .date)
                    DatePicker("Purchase Date", selection: $purchaseDate, displayedComponents: .date)
                }
            }
            .navigationTitle("New Food Item")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    Button("Save", action: saveUser)
                }
            }
            
        }
        
    }
    func saveUser() {
        
        let newItem = FoodItem(id: UUID(), name: itemName, quantity: quantity, unit: unit, expirationDate: expirationDate, category: category, purchaseDate: purchaseDate, location: location)
                viewModel.addItem(newItem)
                
        presentationMode.wrappedValue.dismiss()
        print(viewModel.inventory)
    }
}

#Preview {
    AddFoodItemModal(viewModel: InventoryViewModel())
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
