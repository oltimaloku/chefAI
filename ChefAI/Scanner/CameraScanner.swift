//
//  CameraScanner.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import Foundation

import SwiftUI

struct CameraScanner: View {
    @Binding var startScanning: Bool
    @Binding var scanResult: String
    @Binding var navigateToProductDetails: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            CameraScannerViewController(startScanning: $startScanning, scanResult: $scanResult, navigateToProductDetails: $navigateToProductDetails)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                        }
                    }
                }
                .interactiveDismissDisabled(true)
        }
    }
}

struct CameraScanner_Previews: PreviewProvider {
    static var previews: some View {
        CameraScanner(startScanning: .constant(true), scanResult: .constant(""), navigateToProductDetails: .constant(false))
    }
}
