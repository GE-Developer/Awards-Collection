//
//  ElementsFigure.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 20.06.2021.
//

import SwiftUI

struct ElementsFigure: View {
    let width: CGFloat
    
    var body: some View {
        ZStack {
            SecondFigure(width: width)
                .shadow(radius: width * 0.05)
            FirstFigure(width: width)
                .shadow(radius: width * 0.001)
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = width * 1.5
                
                // MARK: - Левый элемент на щеке
                Path { path in
                    path.move(to: CGPoint(x: width * 0.0715, y: height * 0.56))
                    
                    path.addCurve(
                        to: CGPoint(x: width * 0.085, y: height * 0.56),
                        control1: CGPoint(x: width * 0.07, y: height * 0.53),
                        control2: CGPoint(x: width * 0.09, y: height * 0.53)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.0715, y: height * 0.56),
                        control: CGPoint(x: width * 0.08, y: height * 0.58)
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8607644168, green: 0.6951641256, blue: 0.3810090854, alpha: 1)), Color(#colorLiteral(red: 0.8627719067, green: 0.8128916153, blue: 0.5259134807, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.5,
                    endRadius: width * 0.31
                ))
                
                
                // MARK: - Левый элемент на щеке
                Path { path in
                    path.addArc(
                        center: CGPoint(x: width * 0.915, y: height * 0.555),
                        radius: width * 0.01,
                        startAngle: .degrees(360),
                        endAngle: .degrees(0),
                        clockwise: true
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8607644168, green: 0.6951641256, blue: 0.3810090854, alpha: 1)), Color(#colorLiteral(red: 0.8627719067, green: 0.8128916153, blue: 0.5259134807, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.5,
                    endRadius: width * 0.31
                ))
            }
            .frame(width: width, height: width * 1.5)
            .shadow(color: .red, radius: width * 0.008)
        }
    }
}

struct ElementsFigure_Previews: PreviewProvider {
    static var previews: some View {
        ElementsFigure(width: 422)
    }
}
