//
//  HeroListEnvironment.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/22.
//

import Foundation

struct HeroListEnvironment {
    var environmentType: EnvironmentType
    let dependencies: Dependencies

    static var fake: Self { .init(.fake, Dependencies.fake) }
    static var failing: Self { .init(.failing, Dependencies.failing) }
    static func test(_ test: TestEnvironment) -> Self { .init(.test(test), Dependencies.failing) }
}

extension HeroListEnvironment {
    typealias Dependencies = EmptyDependency
}

extension HeroListEnvironment {
    init(_ environmentType: EnvironmentType, _ dependencies: Dependencies) {
        self.environmentType = environmentType
        self.dependencies = dependencies
    }
}
