//
//  AddFoodItemModalView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import SwiftUI

struct AddFoodItemModal: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: InventoryViewModel
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Item")) {
                    TextField("Item Name", text: $viewModel.itemName)
                    Stepper(value: $viewModel.quantity, in: 1...100) {
                        Text("Quantity: \(viewModel.quantity)")
                    }
                    Picker("Unit", selection: $viewModel.unit) {
                        ForEach(FoodItem.Unit.allCases, id: \.self) { unit in
                            Text(unit.displayName).tag(unit)
                        }
                    }
                    Picker("Category", selection: $viewModel.category) {
                        ForEach(FoodItem.Category.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                    Picker("Storage Location", selection: $viewModel.location) {
                        ForEach(FoodItem.StorageLocation.allCases, id: \.self) { location in
                            Text(location.rawValue).tag(location)
                        }
                    }
                    DatePicker("Expiration Date", selection: $viewModel.expirationDate, displayedComponents: .date)
                    DatePicker("Purchase Date", selection: $viewModel.purchaseDate, displayedComponents: .date)
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
                    Button("Save"){
                        
                        viewModel.saveItem()
                        presentationMode.wrappedValue.dismiss()
                        // TODO: Navigate to InventoryView
                    }
                    
                }
            }
        }
    }
}


#Preview {
    AddFoodItemModal()
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
