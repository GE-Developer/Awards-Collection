//
//  HomeWorkFigure.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 19.06.2021.
//

import SwiftUI

struct HomeWorkFigure: View {
    let width: CGFloat
    
    var body: some View {
        
        ZStack {
            Image("IronMan")
                .resizable()
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = width * 2
                
                // MARK: - Носок левый
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.375, y: height * 0.987))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.355, y: height * 0.923),
                        control: CGPoint(x: width * 0.34, y: height * 0.92)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.395, y: height * 0.962),
                        control: CGPoint(x: width * 0.36, y: height * 0.95)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.455, y: height * 0.963),
                        control: CGPoint(x: width * 0.427, y: height * 0.9656)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.4758, y: height * 0.941),
                        control: CGPoint(x: width * 0.485, y: height * 0.95)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.477, y: height * 0.985),
                        control: CGPoint(x: width * 0.49, y: height * 0.95)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.46, y: height * 0.992),
                        control: CGPoint(x: width * 0.47, y: height * 0.992)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.375, y: height * 0.987),
                        control: CGPoint(x: width * 0.43, y: height * 0.994)
                    )
                    
                }
                //.stroke()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5996468284, green: 0.005878890474, blue: 0.005878890474, alpha: 1)), Color(#colorLiteral(red: 0.8213003139, green: 0.35600875, blue: 0.3531825889, alpha: 1))]),
                        center: .center,
                        startRadius: width * 0.92,
                        endRadius: width * 0.99
                    )
                )
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.395, y: height * 0.9634))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.375, y: height * 0.9847),
                        control: CGPoint(x: width * 0.39, y: height * 0.986)
                    )
                }
                .stroke(
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5996468284, green: 0.005878890474, blue: 0.005878890474, alpha: 1)), Color(#colorLiteral(red: 0.8084362323, green: 0.3011202089, blue: 0.3086891417, alpha: 1))]),
                        center: .center,
                        startRadius: width * 0.9,
                        endRadius: width * 0.96
                    ),
                    lineWidth: 2
                )
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.455, y: height * 0.9635))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.465, y: height * 0.99),
                        control: CGPoint(x: width * 0.475, y: height * 0.99)
                    )
                }
                .stroke(
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5996468284, green: 0.005878890474, blue: 0.005878890474, alpha: 1)), Color(#colorLiteral(red: 0.8084362323, green: 0.3011202089, blue: 0.3086891417, alpha: 1))]),
                        center: .center,
                        startRadius: width * 0.9,
                        endRadius: width * 0.96
                    ),
                    lineWidth: 2
                )
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.39, y: height * 0.979))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.4656, y: height * 0.9847),
                        control: CGPoint(x: width * 0.39, y: height * 0.986)
                    )
                }
                .stroke(
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5996468284, green: 0.005878890474, blue: 0.005878890474, alpha: 1)), Color(#colorLiteral(red: 0.8084362323, green: 0.3011202089, blue: 0.3086891417, alpha: 1))]),
                        center: .center,
                        startRadius: width * 0.9,
                        endRadius: width * 0.96
                    ),
                    lineWidth: 1.9
                )
                
                // MARK: - Стопа левая
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.355, y: height * 0.923))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.395, y: height * 0.962),
                        control: CGPoint(x: width * 0.36, y: height * 0.95)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.455, y: height * 0.963),
                        control: CGPoint(x: width * 0.427, y: height * 0.9656)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.4758, y: height * 0.941),
                        control: CGPoint(x: width * 0.485, y: height * 0.95)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.471, y: height * 0.93),
                        control: CGPoint(x: width * 0.469, y: height * 0.93)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.443, y: height * 0.938),
                        control: CGPoint(x: width * 0.465, y: height * 0.937)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.395, y: height * 0.94),
                        control: CGPoint(x: width * 0.465, y: height * 0.937)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.355, y: height * 0.923),
                        control: CGPoint(x: width * 0.36, y: height * 0.937)
                    )
                }
                .stroke()
                
                
                
                
                
                
                

                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            .frame(width: width, height: width * 2)
        }
    }
}

struct HomeWorkFigure_Previews: PreviewProvider {
    static var previews: some View {
        HomeWorkFigure(width: 422)
    }
}
