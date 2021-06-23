//
//  HorizontalGridView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 24.06.2021.
//

import SwiftUI

struct HorizontalGridView: View {
    let data = 1...10
    let rows = [
        GridItem(.fixed(200))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(data, id: \.self) { item in
                    Text("Image: \(item)")
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
