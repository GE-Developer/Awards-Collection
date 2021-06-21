//
//  EyesElement.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 21.06.2021.
//

import SwiftUI

struct EyesElement: View {
    let width: CGFloat
    
    var body: some View {
        ZStack {
            ElementsOnHair(width: width)
   
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = width * 1.5
                
                // MARK: - Серый глаз левый
                Path { path in
                    path.move(to: CGPoint(x: width * 0.857, y: height * 0.527))

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.866, y: height * 0.545),
                        control: CGPoint(x: width * 0.866, y: height * 0.54)
                    )

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.73, y: height * 0.601),
                        control: CGPoint(x: width * 0.8, y: height * 0.597)
                    )

                    path.addLine(to: CGPoint(x: width * 0.623, y: height * 0.608))

                    path.addLine(to: CGPoint(x: width * 0.61, y: height * 0.589))

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.857, y: height * 0.527),
                        control: CGPoint(x: width * 0.73, y: height * 0.573)
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5234997662, green: 0.6172991512, blue: 0.7245370992, alpha: 1)), Color(#colorLiteral(red: 0.4077863097, green: 0.4469172955, blue: 0.5447555184, alpha: 1))]),
                    center: .top,
                    startRadius: width * 0.96,
                    endRadius: width * 0.85
                ))
                .shadow(color: Color(#colorLiteral(red: 0.3450720906, green: 0.3763466179, blue: 0.4619504809, alpha: 1)), radius: width * 0.004)

                // MARK: - Серый глаз правый
                Path { path in
                    path.move(to: CGPoint(x: width * 0.143, y: height * 0.527))

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.134, y: height * 0.545),
                        control: CGPoint(x: width * 0.134, y: height * 0.54)
                    )

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.27, y: height * 0.601),
                        control: CGPoint(x: width * 0.2, y: height * 0.597)
                    )

                    path.addLine(to: CGPoint(x: width * 0.372, y: height * 0.608))

                    path.addLine(to: CGPoint(x: width * 0.385, y: height * 0.587))

                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.143, y: height * 0.527),
                        control: CGPoint(x: width * 0.27, y: height * 0.573)
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5234997662, green: 0.6172991512, blue: 0.7245370992, alpha: 1)), Color(#colorLiteral(red: 0.4077863097, green: 0.4469172955, blue: 0.5447555184, alpha: 1))]),
                    center: .top,
                    startRadius: width * 0.96,
                    endRadius: width * 0.85
                ))
                .shadow(color: Color(#colorLiteral(red: 0.3450720906, green: 0.3763466179, blue: 0.4619504809, alpha: 1)), radius: width * 0.004)
            }
        }
        .frame(width: width, height: width * 1.5)
    }
}

struct EyesElement_Previews: PreviewProvider {
    static var previews: some View {
        EyesElement(width: 422)
    }
}
