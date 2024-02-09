//
//  ProfileView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI

struct InventoryView: View {
    @State private var showingModal = false
    @ObservedObject var viewModel = InventoryViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(viewModel.inventory) { foodItem in
                                            
                                            FoodItemComponent(name: foodItem.name, quantity: "\(foodItem.quantity)")
                                        }
                    Button("Button") {
                        print(viewModel.inventory)
                    }
                    
                }
                .navigationBarTitle("Food Items", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                                    self.showingModal = true
                                }) {
                                    Image(systemName: "plus")
                                })
                                .sheet(isPresented: $showingModal) {
                                    AddFoodItemModal(viewModel: viewModel)
                                }
            }
        }
        
    }
}

#Preview {
    InventoryView()
}
