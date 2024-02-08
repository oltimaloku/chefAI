//
//  FoodItemDetailView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-08.
//

import SwiftUI

struct FoodItemDetailView: View {
    var itemName: String
    
    var body: some View {
        Text("Details for \(itemName)")
                    .navigationBarTitle(itemName, displayMode: .inline)
    }
}

#Preview {
    FoodItemDetailView(itemName: "Apples")
}
