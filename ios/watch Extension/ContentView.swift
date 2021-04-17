//
//  ContentView.swift
//  watch Extension
//
//  Created by Amorn Apichattanakul on 17/4/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: WatchViewModel = WatchViewModel()
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .padding()
            Button(action: {
                viewModel.sendDataMessage(for: .sendCounterToFlutter, data: ["counter": viewModel.counter + 1])
            }) {
                Text("+ by 2")
            }
        }
        
        
    }
}
