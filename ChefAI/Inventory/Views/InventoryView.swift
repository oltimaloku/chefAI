//
//  ProfileView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI

struct InventoryView: View {
    @State private var showingModal = false
    @EnvironmentObject var viewModel: InventoryViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(viewModel.getInventory) { foodItem in
                        FoodItemComponent(foodItem: foodItem)
                                        }
                    Button("Button") {
                        print(viewModel.getInventory)
                    }
                    
                }
                .navigationBarTitle("Food Items", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                                    self.showingModal = true
                                }) {
                                    Image(systemName: "plus")
                                })
                                .sheet(isPresented: $showingModal) {
                                    AddFoodItemModal()
                                    
                                }
            }
        }
        
    }
}

#Preview {
    InventoryView()
}
