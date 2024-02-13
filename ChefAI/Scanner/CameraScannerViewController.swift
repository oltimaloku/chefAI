//
//  CameraScannerViewController.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import Foundation
import SwiftUI
import UIKit
import VisionKit

// Makes UIKit's DataScannerViewController usable
struct CameraScannerViewController: UIViewControllerRepresentable {
    
    @Binding var startScanning: Bool
    @Binding var navigateToProductDetails: Bool
    @EnvironmentObject var inventoryViewModel: InventoryViewModel
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self, inventoryViewModel: inventoryViewModel)
    }
    
    // Initializes DataScannerViewController
    // Sets the coordinator as the delegate to handle recognized text taps
    func makeUIViewController(context: Context) -> DataScannerViewController {
        let viewController = DataScannerViewController(
            recognizedDataTypes: [.barcode()],
            qualityLevel: .accurate,
            recognizesMultipleItems: false,
            isHighFrameRateTrackingEnabled: false,
            isHighlightingEnabled: true)
        
        viewController.delegate = context.coordinator
        
        return viewController
    }
    
    // Controls the scanning state based on startSacnning binding
    func updateUIViewController(_ viewController: DataScannerViewController, context: Context) {
        if startScanning {
            try? viewController.startScanning()
        } else {
            viewController.stopScanning()
        }
    }
    
    // Implements DataScannerViewControllerDelegate protocol to handle interaction with recognized items
    class Coordinator: NSObject, DataScannerViewControllerDelegate {
        var parent: CameraScannerViewController
        var inventoryViewModel: InventoryViewModel
        
        init(_ parent: CameraScannerViewController, inventoryViewModel: InventoryViewModel) {
                self.parent = parent
                self.inventoryViewModel = inventoryViewModel
            }
        
        // When a recognized item is tapped, updates scanResults binding in CameraScannerViewController
        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
            switch item {
            case .barcode(let code):
                if let barcodeValue = code.payloadStringValue {
                    let barCodeLookupService = BarcodeLookupService()
                    barCodeLookupService.fetchProductDetails(barcode: barcodeValue) { product, errorMessage in
                        DispatchQueue.main.async {
                            if let product = product {
                                if let productName = product.productName {
                                    self.inventoryViewModel.setPendingProduct(product)
                                } else {
                                // TODO: Handle
                                   // self.parent.scanResult = "Product Name not available"
                                }
                                self.parent.navigateToProductDetails = true // Trigger navigation
                                self.parent.startScanning = false
                            } else if let errorMessage = errorMessage {
                                // TODO: Handle error
                               // self.parent.scanResult = "Error: \(errorMessage)"
                            }
                        }
                        print("Barcode Value: \(barcodeValue)")
                    }
                } else {
                    DispatchQueue.main.async {
                        // TODO: Handle error
                        // self.parent.scanResult = "Barcode value could not be extracted."
                    }
                }
                
                
            default:
                break
            }
        }
    }
}
