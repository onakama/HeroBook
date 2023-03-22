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
    static var reducer: Reducer<State, Action, Environment> {
        Reducer { _, action, _ in
            switch action {
            }
        }
    }
}
