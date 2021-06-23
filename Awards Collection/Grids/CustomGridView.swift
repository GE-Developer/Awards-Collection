//
//  CustomGridView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 22.06.2021.
//

import SwiftUI

struct CustomGridView<Content: View, T>: View {
    let items: [T]
    let columns: Int
    let content: (T) -> Content
    var rows: Int {
        items.count / columns
    }
    
    var body: some View {
        GeometryReader { geometry in
            let sideSide = geometry.size.width / CGFloat(columns)
                
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(0...rows, id: \.self) { rowIndex in
                        HStack(spacing: 0) {
                            ForEach(0..<columns) { columnIndex in
                                if let index = indexFor(row: rowIndex,
                                                        column: columnIndex) {
                                    content(items[index])
                                        .frame(width: sideSide, height: sideSide)
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func indexFor(row: Int, column: Int) -> Int? {
        let index = row * columns + column
        
        return index < items.count ? index : nil
    }
}

struct CustomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridView(items: [1, 2, 3, 4, 5, 6, 7], columns: 3) {item in
            Text("\(item)")
        }
    }
}
