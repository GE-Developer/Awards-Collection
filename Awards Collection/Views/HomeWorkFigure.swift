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
                .scaledToFill()
                .frame(width: width, height: width * 1.5)
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = width * 1.5
                
                
                // MARK: - Щека правая золотая
                Path { path in
                    path.move(to: CGPoint(x: width * 0.663, y: height * 0.953))
                    
                    path.addLine(to: CGPoint(x: width * 0.622, y: height * 0.95))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.65, y: height * 0.88),
                        control: CGPoint(x: width * 0.64, y: height * 0.94)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.707, y: height * 0.8),
                        control: CGPoint(x: width * 0.66, y: height * 0.85)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.82, y: height * 0.688))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.876, y: height * 0.56),
                        control: CGPoint(x: width * 0.87, y: height * 0.64)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.906, y: height * 0.486),
                        control: CGPoint(x: width * 0.9, y: height * 0.5)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.924, y: height * 0.54))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.902, y: height * 0.596),
                        control: CGPoint(x: width * 0.935, y: height * 0.56)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.8995, y: height * 0.62))
                    
                    path.addLine(to: CGPoint(x: width * 0.764, y: height * 0.867))
                    
                    path.addLine(to: CGPoint(x: width * 0.663, y: height * 0.953))
                    
                }
                //.stroke(lineWidth: 0.5)
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7985611064, green: 0.6572520831, blue: 0.3815595745, alpha: 1)), Color(#colorLiteral(red: 0.6357985735, green: 0.5022894144, blue: 0.2368019521, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.573,
                    endRadius: width * 0.640
                ))
                
                
                // MARK: - Подбородок
                Path { path in
                    path.move(to: CGPoint(x: width * 0.666, y: height * 0.951))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.556, y: height * 0.947),
                        control: CGPoint(x: width * 0.63, y: height * 0.946)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.54, y: height * 0.939),
                        control: CGPoint(x: width * 0.54, y: height * 0.945)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.531, y: height * 0.935),
                        control: CGPoint(x: width * 0.536, y: height * 0.934)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.45, y: height * 0.935))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.4378, y: height * 0.939),
                        control: CGPoint(x: width * 0.438, y: height * 0.935)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.425, y: height * 0.9467),
                        control: CGPoint(x: width * 0.435, y: height * 0.947)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.315, y: height * 0.951),
                        control: CGPoint(x: width * 0.36, y: height * 0.945)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.39, y: height * 0.982),
                        control: CGPoint(x: width * 0.359, y: height * 0.984)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.6, y: height * 0.982),
                        control: CGPoint(x: width * 0.45, y: height * 0.982)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.644, y: height * 0.969),
                        control: CGPoint(x: width * 0.63, y: height * 0.98)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.666, y: height * 0.951))
                }
                //.stroke(lineWidth: 1)
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.641192019, green: 0.1846340001, blue: 0.172197938, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.75,
                    endRadius: width * 0.65
                ))
                
                
                // MARK: - Правая щека красная
                Path { path in
                    path.move(to: CGPoint(x: width * 0.762, y: height * 0.867))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.875, y: height * 0.745),
                        control: CGPoint(x: width * 0.83, y: height * 0.8)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.9, y: height * 0.618),
                        control: CGPoint(x: width * 0.89, y: height * 0.69)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.77, y: height * 0.77))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.762, y: height * 0.867),
                        control: CGPoint(x: width * 0.732, y: height * 0.818)
                    )
                }
                //.stroke()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.641192019, green: 0.1846340001, blue: 0.172197938, alpha: 1)), Color(#colorLiteral(red: 0.03220745048, green: 0.03220745048, blue: 0.03220745048, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.77,
                    endRadius: width * 0.31
                ))
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.893, y: height * 0.638))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.817, y: height * 0.805),
                        control: CGPoint(x: width * 0.846, y: height * 0.7)
                    )
                }
                .stroke(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5576926885, green: 0.1633879358, blue: 0.1529443652, alpha: 1)), Color(#colorLiteral(red: 0.05860253536, green: 0.0005486226102, blue: 0, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.77,
                    endRadius: width * 0.31
                ), lineWidth: width * 0.008)
                
                
                // MARK: - Левая щека красная
                Path { path in
                    path.move(to: CGPoint(x: width * 0.22, y: height * 0.864))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.21, y: height * 0.755),
                        control: CGPoint(x: width * 0.26, y: height * 0.81)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.1, y: height * 0.622))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.084, y: height * 0.59),
                        control: CGPoint(x: width * 0.086, y: height * 0.6)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.11, y: height * 0.745),
                        control: CGPoint(x: width * 0.08, y: height * 0.6)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.22, y: height * 0.864))
                }
                //.stroke()
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.641192019, green: 0.1846340001, blue: 0.172197938, alpha: 1)), Color(#colorLiteral(red: 0.03220745048, green: 0.03220745048, blue: 0.03220745048, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.77,
                    endRadius: width * 0.31
                ))
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.107, y: height * 0.638))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.173, y: height * 0.805),
                        control: CGPoint(x: width * 0.154, y: height * 0.7)
                    )
                }
                .stroke(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5576926885, green: 0.1633879358, blue: 0.1529443652, alpha: 1)), Color(#colorLiteral(red: 0.05860253536, green: 0.0005486226102, blue: 0, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.77,
                    endRadius: width * 0.31
                ), lineWidth: width * 0.008)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            .frame(width: width, height: width * 1.5)
        }
    }
}

struct HomeWorkFigure_Previews: PreviewProvider {
    static var previews: some View {
        HomeWorkFigure(width: 422)
    }
}
