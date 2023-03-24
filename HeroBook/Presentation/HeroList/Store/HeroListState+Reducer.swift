//
//  HeroListState+Reducer.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import Foundation
import ComposableArchitecture

extension HeroListState {
    typealias State = HeroListState
    typealias Action = HeroListAction
    typealias Environment = HeroListEnvironment

    static var reducer = AnyReducer<State, Action, Environment> { state, action, environment in
        switch action {
        case .searchButtonTapped:
            print("aaaaa")
            return .none
        }
    }
}
