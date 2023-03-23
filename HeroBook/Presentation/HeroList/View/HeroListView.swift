//
//  HeroListView.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import SwiftUI
import ComposableArchitecture

struct HeroListView: View {
    var store: Store<ViewState, ViewAction>

    var body: some View {
        WithViewStore(store) { _ in
            Text("heroName")
        }
    }
}

struct HeroListView_Previews: PreviewProvider {
    static var previews: some View {
        HeroListView(store: Store(initialState: .initial,
                                                    reducer: HeroListState.reducer,
                                                    environment: .fake)
                                        .scope(state: \.view,
                                               action: HeroListAction.view))
    }
}
