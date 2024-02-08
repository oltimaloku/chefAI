//
//  HomeView.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-07.
//

import SwiftUI
import VisionKit

struct HomeView: View {
    
    @State private var showCameraScannerView = false
    @State private var isDeviceCapacity = false
    @State private var showDeviceNotCapacityAlert = false
    @State private var scanResults: String = ""
    
    var body: some View {
        VStack {
            Text(scanResults)
                .padding()
            
            Button {
                if isDeviceCapacity {
                    self.showCameraScannerView = true
                } else {
                    self.showDeviceNotCapacityAlert = true
                }
            } label: {
                Text("Tap to Scan Documents")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showCameraScannerView) {
            CameraScanner(startScanning: $showCameraScannerView, scanResult: $scanResults)
        }
        .alert("Scanner Unavailable", isPresented: $showDeviceNotCapacityAlert, actions: {})
        .onAppear {
            isDeviceCapacity = (DataScannerViewController.isSupported &&
                                DataScannerViewController.isAvailable)
        }
    }
}

#Preview {
    HomeView()
}
