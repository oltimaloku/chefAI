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
            FoodItemForm()
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
