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
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            CameraScannerViewController(startScanning: $startScanning, scanResult: $scanResult)
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
        CameraScanner(startScanning: .constant(true), scanResult: .constant(""))
    }
}
