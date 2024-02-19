//
//  ContentView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI

// Similar to MaterialApp widget in Flutter
struct ContentView: View {
    var inventoryViewModel = InventoryViewModel()
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
                .environmentObject(inventoryViewModel)
            
            RecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "book")
                }
                .tag(1)
            
            InventoryView()
                .tabItem {
                    Label("Inventory", systemImage: "refrigerator")
                }
                .tag(2)
            
        }
    }
}

#Preview {
    ContentView()
}
