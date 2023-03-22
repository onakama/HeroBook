//
//  HeroListState.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import Foundation

struct HeroListState: Equatable {
}

extension HeroListState {
    static var initial = HeroListState()
}

extension HeroListState {
    var view: HeroListView.ViewState {
        HeroListView.ViewState.convert(from: self)
    }
}
