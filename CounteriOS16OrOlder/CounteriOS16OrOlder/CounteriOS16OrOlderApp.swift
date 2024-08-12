//
//  CounteriOS16OrOlderApp.swift
//  CounteriOS16OrOlder
//
//  Created by Anton Gorlov on 05.08.2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct CounteriOS16OrOlderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(initialState: CounterReducer.State(name: "Yeahh"), reducer: {
                CounterReducer()
                // Create an instance of our structure that contains the reduce function
            }))
        }
    }
}

