//
//  HeroListView+State.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import Foundation

extension HeroListView {
    struct ViewState: Equatable {

    }
}

// MARK: - Converter
extension HeroListView.ViewState {
    static func convert(from state: HeroListState) -> Self {
        .init()
    }
}
