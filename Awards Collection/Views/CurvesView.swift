//
//  CurvesView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct CurvesView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearline = size * 0.1
            let farline = size * 0.9
        }
        .frame(width: width, height: height)
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView(width: 200, height: 200)
    }
}
