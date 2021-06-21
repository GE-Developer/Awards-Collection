//
//  RedEyes.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 21.06.2021.
//

import SwiftUI

struct RedEyes: View {
    let width: CGFloat
    let opacity: Double
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = width * 1.5
                        
            // MARK: - Глаз левый
            Path { path in
                path.move(to: CGPoint(x: width * 0.828, y: height * 0.535))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.837, y: height * 0.552),
                    control: CGPoint(x: width * 0.85, y: height * 0.545)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.633, y: height * 0.596),
                    control: CGPoint(x: width * 0.76, y: height * 0.595)
                )
                
                path.addLine(to: CGPoint(x: width * 0.624, y: height * 0.587))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.828, y: height * 0.535),
                    control: CGPoint(x: width * 0.73, y: height * 0.572)
                )
            }
            .fill(Color(#colorLiteral(red: 0.7281038688, green: 0.01391959628, blue: 0.007102936104, alpha: 1)))
            .opacity(opacity)
            .animation(.linear.speed(0.5).repeatForever())
                
            // MARK: - Глаз правый
            Path { path in
                path.move(to: CGPoint(x: width * 0.172, y: height * 0.535))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.163, y: height * 0.552),
                    control: CGPoint(x: width * 0.15, y: height * 0.545)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.367, y: height * 0.596),
                    control: CGPoint(x: width * 0.24, y: height * 0.595)
                )
                
                path.addLine(to: CGPoint(x: width * 0.376, y: height * 0.585))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.172, y: height * 0.535),
                    control: CGPoint(x: width * 0.27, y: height * 0.572)
                )
            }
            .fill(Color(#colorLiteral(red: 0.7281038688, green: 0.01391959628, blue: 0.007102936104, alpha: 1)))
            .opacity(opacity)
            .animation(.linear.speed(0.5).repeatForever())
        }
        .frame(width: width, height: width * 1.5)
    }
}

struct RedEyes_Previews: PreviewProvider {
    static var previews: some View {
        RedEyes(width: 422, opacity: 1)
    }
}

