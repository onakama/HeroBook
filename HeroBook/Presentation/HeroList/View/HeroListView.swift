//
//  HeroListView.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import SwiftUI
import ComposableArchitecture

struct HeroListView: View {
    var store: Store<HeroListState, HeroListAction>

    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                Button(String(viewStore.state.characterList.count),
                   action: {
                    viewStore.send(.searchButtonTapped)
                    }
                )
            }
        }
    }
}

struct HeroListView_Previews: PreviewProvider {
    static var previews: some View {
        HeroListView(store: Store(initialState: .init(),
                                  reducer: HeroListState.reducer,
                                  environment: .init()))
    }
}
