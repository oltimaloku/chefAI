//
//  FoodItemForm.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-21.
//

import SwiftUI

struct FoodItemForm: View {
    @EnvironmentObject var viewModel: InventoryViewModel
    var body: some View {
        VStack {
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
        }.padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.all)
    }
}

#Preview {
    FoodItemForm()
}
