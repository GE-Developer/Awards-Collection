//
//  PathView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct PathView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearline = size * 0.1
            let farline = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearline, y: nearline))
                path.addLine(to: CGPoint(x: farline, y: farline))
                path.addLine(to: CGPoint(x: nearline, y: farline))
                path.addLine(to: CGPoint(x: middle - nearline, y: nearline))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearline))
                path.addLine(to: CGPoint(x: middle, y: farline))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3, dash: [geometry.size.width / nearline]
                )
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearline / 100)
                .offset(x: -geometry.size.width / 7.25)
        }
        .frame(width: width, height: height)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView(width: 200, height: 200)
    }
}
