//
//  ContentView.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        VStack {
            HeroListView(store: Store(initialState: .init(),
                                      reducer: HeroListState.reducer,
                                      environment: .init()))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
