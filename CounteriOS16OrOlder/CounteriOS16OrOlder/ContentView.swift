//
//  ContentView.swift
//  CounteriOS16OrOlder
//
//  Created by Anton Gorlov on 05.08.2024.
//

import SwiftUI
import ComposableArchitecture
import Perception

struct ContentView: View {
    @Perception.Bindable var store: StoreOf<CounterReducer>
    
    var body: some View {
        
        WithPerceptionTracking {
            VStack {
                Text("Counter: \(store.counter)")
          
                Button(action: {
                    store.send(.increase)
                }, label: {
                    Text("Increase the value")
                })
                
                Button(action: {
                    store.send(.decrease)
                }, label: {
                    Text("Decrease the value")
                })
            }
            .padding()
        }
    }
}

#Preview {
    
    let store = Store(initialState: CounterReducer.State(name: "Test")) {
        CounterReducer()
    }
    return ContentView(store: store)
}

// If iOS 16 or older
// We use Perception it's back-port for realization Observable, if iOS 17 or later we use macro @Observable

/// Store is the storage where Reducer and State are located

// DemandBuffer - a buffer for storing messages. Wrapped by unfairLock'm. This is necessary because the Store with which ViewStore works can receive messages from different places and different threads

// StorePublisher - Custom event source, allows you to subscribe to individual fields of the original OutPut type

