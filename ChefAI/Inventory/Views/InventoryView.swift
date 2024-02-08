//
//  ProfileView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI

struct InventoryView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    FoodItemComponent(name: "Apples", quantity: "5")
                    FoodItemComponent(name: "Oranges", quantity: "4")
                    
                }.navigationBarTitle("Food Items", displayMode: .large)
            }
        }
        
    }
}

#Preview {
    InventoryView()
}
