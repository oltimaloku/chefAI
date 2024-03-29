//
//  ProductDetailsView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-11.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var viewModel: InventoryViewModel
    @State private var isNutrimentsExpanded = false
    @State private var showingAddFoodItemModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    DisclosureGroup("Nutriments", isExpanded: $isNutrimentsExpanded) {
                        Text("Here's some detailed information about the topic. You can put any content here, including text, images, or other SwiftUI views.")
                        
                    }
                    .accentColor(.blue)
                    .padding()
                    .onTapGesture {
                        self.isNutrimentsExpanded.toggle()
                    }
                }
                Spacer()
                Button {
                    showingAddFoodItemModal = true
                    // TODO: This should close once save button in modal is pressed
                } label: {
                    Text("Add product to inventory").foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }.padding(10)
            }
            .navigationTitle(viewModel.getPendingProduct?.product?.productName ?? "No product name")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showingAddFoodItemModal, content: {
                AddFoodItemModal()
            })
        }
    }
}

// Preview

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}


