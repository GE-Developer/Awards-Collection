//
//  SecondFigure.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 20.06.2021.
//

import SwiftUI

struct SecondFigure: View {
    let width: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = width * 1.5
            
            // MARK: - Голова правая красная
            Path { path in
                path.move(to: CGPoint(x: width * 0.068, y: height * 0.56))
                
                path.addLine(to: CGPoint(x: width * 0.054, y: height * 0.54))
                
                path.addLine(to: CGPoint(x: width * 0.035, y: height * 0.346))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.044, y: height * 0.32),
                    control: CGPoint(x: width * 0.05, y: height * 0.33)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.59, y: height * 0.0045),
                    control: CGPoint(x: width * 0.03, y: -height * 0.016 )
                )
                
                path.addLine(to: CGPoint(x: width * 0.6, y: height * 0.6))
                
                path.addLine(to: CGPoint(x: width * 0.068, y: height * 0.56))
            }
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3597651558, green: 0.1054008549, blue: 0.09866375249, alpha: 1)), Color(#colorLiteral(red: 0.86911273, green: 0.3610146642, blue: 0.3854023218, alpha: 1))]),
                center: .center,
                startRadius: width * 0.67,
                endRadius: width * 0.31
            ))
            
            // MARK: - Голова красная левая
            Path { path in
                path.move(to: CGPoint(x: width * 0.928, y: height * 0.55))
                
                path.addLine(to: CGPoint(x: width * 0.966, y: height * 0.36))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.956, y: height * 0.337),
                    control: CGPoint(x: width * 0.97, y: height * 0.346)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.59, y: height * 0.005), // тут
                    control: CGPoint(x: width * 0.97, y: height * 0.06)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.3, y: height * 0.095),
                    control: CGPoint(x: width * 0.38, y: height * 0.016)
                )
                
                path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.5))
                
                path.addLine(to: CGPoint(x: width * 0.928, y: height * 0.55))
            }
            //.stroke()
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3597651558, green: 0.1054008549, blue: 0.09866375249, alpha: 1)), Color(#colorLiteral(red: 0.86911273, green: 0.3610146642, blue: 0.3854023218, alpha: 1))]),
                center: .center,
                startRadius: width * 0.76,
                endRadius: width * 0.31
            ))
            
            // MARK: - Лоб
            Path { path in
                path.move(to: CGPoint(x: width * 0.13, y: height * 0.507))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.852, y: height * 0.51),
                    control: CGPoint(x: width * 0.51, y: height * 0.67)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.909, y: height * 0.2),
                    control: CGPoint(x: width * 0.925, y: height * 0.2)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.69, y: height * 0.095),
                    control: CGPoint(x: width * 0.91, y: height * 0.14)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.665, y: height * 0.105),
                    control: CGPoint(x: width * 0.67, y: height * 0.09)
                )
                
                path.addLine(to: CGPoint(x: width * 0.623, y: height * 0.33))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.57, y: height * 0.3656),
                    control: CGPoint(x: width * 0.616, y: height * 0.365)
                )
                
                path.addLine(to: CGPoint(x: width * 0.41, y: height * 0.364))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.382, y: height * 0.34),
                    control: CGPoint(x: width * 0.385, y: height * 0.365)
                )
                
                path.addLine(to: CGPoint(x: width * 0.3356, y: height * 0.099))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.33, y: height * 0.094),
                    control: CGPoint(x: width * 0.335, y: height * 0.093)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.091, y: height * 0.185),
                    control: CGPoint(x: width * 0.165, y: height * 0.11)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.13, y: height * 0.507),
                    control: CGPoint(x: width * 0.095, y: height * 0.3)
                )
            }
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.662143638, green: 0.5154099536, blue: 0.2332553736, alpha: 1)), Color(#colorLiteral(red: 0.8665059366, green: 0.7335707032, blue: 0.4036173532, alpha: 1))]),
                center: .center,
                startRadius: width * 0.6,
                endRadius: width * 0.3
            ))
        }
        .frame(width: width, height: width * 1.5)
    }
}


struct HomeWork_Previews: PreviewProvider {
    static var previews: some View {
        SecondFigure(width: 422)
    }
}
