//
//  ProductDetailsView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-11.
//

import SwiftUI

struct ProductDetailsView: View {
    @ObservedObject var viewModel = InventoryViewModel()
    @State private var isNutrimentsExpanded = false
    
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
                    
                } label: {
                    Text("Add product to inventory").foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .navigationTitle(viewModel.getPendingProduct?.product?.productName ?? "No product name")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// Preview

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}


