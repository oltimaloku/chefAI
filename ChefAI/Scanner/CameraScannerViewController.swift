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
    @Binding var scanResult: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
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
        init(_ parent: CameraScannerViewController) {
            self.parent = parent
        }
        
        // When a recognized item is tapped, updates scanResults binding in CameraScannerViewController
        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
            switch item {
            case .text(let text):
                parent.scanResult = text.transcript
                print("-- Text Observation -- \(text.observation)")
                print("-- Text transcript -- \(text.transcript)")
                
            case .barcode(let code):
                if let barcodeValue = code.payloadStringValue {
                    parent.scanResult = barcodeValue
                    let barCodeLookupService = BarcodeLookupService()
                    barCodeLookupService.fetchProductDetails(barcode: barcodeValue)
                    print("Barcode Value: \(barcodeValue)")
                } else {
                    print("Barcode value could not be extracted.")
                }
                
            default:
                break
            }
        }
    }
}
