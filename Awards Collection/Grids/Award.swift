//
//  Award.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 22.06.2021.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func  getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles(width: 160, height: 160)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView(width: 160, height: 160)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(IronMan(width: 110, opacity: 0)),
                title: "Iron Man",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView(width: 160, height: 160)),
                title: "Curves View",
                awarded: true
            )
        ]
    }
}
