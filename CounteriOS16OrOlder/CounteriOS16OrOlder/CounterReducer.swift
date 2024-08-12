//
//  CounterReducer.swift
//  CounteriOS16OrOlder
//
//  Created by Anton Gorlov on 05.08.2024.
//

import Foundation
import ComposableArchitecture

@Reducer
struct CounterReducer {
    
    @ObservableState
    struct State: Equatable {
        var counter: Int = 0
        var name: String
    }
    
    enum Action {
        case increase
        case decrease
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .increase:
            state.counter += 1
            return .none
        case .decrease:
            state.counter -= 1
            return .none
        }
    }
}

// @Reducer
// It's not a property wrapper, it's a macro. This macro extends our structure

// @ObservableState
// Creates some register for this property and saves in this register.Every time someone changes a property. This code goes through this register, looks at where this property was accessed and, accordingly, new values ​​are transferred (How to property wrapper Biding or Observable SwiftUI for example)

// enum Action { a set of signals that we will send. + and - numbers
    
// inout means that the State reference will be passed and all changes that will be made in this function will be applied to the object that was passed as a parameter
