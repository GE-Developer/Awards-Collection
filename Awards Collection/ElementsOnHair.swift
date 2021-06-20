//
//  ElementsOnHair.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 20.06.2021.
//

import SwiftUI

struct ElementsOnHair: View {
    let width: CGFloat
    
    var body: some View {
        ZStack {
            ElementsFigure(width: width)
            
//            Image("IronMan")
//                .resizable()
//                .scaledToFill()
//                .frame(width: width, height: width * 1.5)
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = width * 1.5
                
                // MARK: - Квадрат на лбу
                Path { path in
                    path.move(to: CGPoint(x: width * 0.373, y: height * 0.19))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.385, y: height * 0.173),
                        control: CGPoint(x: width * 0.368, y: height * 0.175)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.62, y: height * 0.176),
                        control: CGPoint(x: width * 0.5, y: height * 0.16)
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.625, y: height * 0.185),
                        control: CGPoint(x: width * 0.626, y: height * 0.178)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.625, y: height * 0.32))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.58, y: height * 0.365),
                        control: CGPoint(x: width * 0.62, y: height * 0.37)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.41, y: height * 0.364))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.38, y: height * 0.33),
                        control: CGPoint(x: width * 0.378, y: height * 0.365)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.373, y: height * 0.19))
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2517228127, green: 0.1020493284, blue: 0.08968237787, alpha: 1)), Color(#colorLiteral(red: 0.5233400133, green: 0.1424159802, blue: 0.171845304, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.5,
                    endRadius: width * 0.27
                ))
                .shadow(color: .black, radius: width * 0.01)
                
                // MARK: - Линия на голове левая большая
                Path { path in
                    path.move(to: CGPoint(x: width * 0.786, y: height * 0.1178))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.813, y: height * 0.125),
                        control: CGPoint(x: width * 0.8, y: height * 0.124)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.815, y: height * 0.075))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.784, y: height * 0.059),
                        control: CGPoint(x: width * 0.8, y: height * 0.065)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.784, y: height * 0.119))
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1449621519, green: 0.05910379476, blue: 0.05231140588, alpha: 1)), Color(#colorLiteral(red: 0.5233400133, green: 0.1424159802, blue: 0.171845304, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.76,
                    endRadius: width * 0.55
                ))
                .shadow(color: .black, radius: width * 0.003)
                
                // MARK: - Линия на голове правая большая
                Path { path in
                    path.move(to: CGPoint(x: width * 0.214, y: height * 0.114))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.187, y: height * 0.124),
                        control: CGPoint(x: width * 0.2, y: height * 0.12)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.185, y: height * 0.07))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.216, y: height * 0.054),
                        control: CGPoint(x: width * 0.2, y: height * 0.065)
                    )
                    
                    path.addLine(to: CGPoint(x: width * 0.216, y: height * 0.119))
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1449621519, green: 0.05910379476, blue: 0.05231140588, alpha: 1)), Color(#colorLiteral(red: 0.5233400133, green: 0.1424159802, blue: 0.171845304, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.7,
                    endRadius: width * 0.55
                ))
                .shadow(color: .black, radius: width * 0.003)
                
                // MARK: - Рога
                Path { path in
                    path.move(to: CGPoint(x: width * 0.336, y: height * 0.095))
                    
                    path.addLine(to: CGPoint(x: width * 0.326, y: height * 0.06))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.335, y: height * 0.05),
                        control: CGPoint(x: width * 0.3256, y: height * 0.054)
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2466896905, green: 0.1005800248, blue: 0.08902106072, alpha: 1)), Color(#colorLiteral(red: 0.5233400133, green: 0.1424159802, blue: 0.171845304, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.7,
                    endRadius: width * 0.55
                ))
                .shadow(color: Color(#colorLiteral(red: 0.4806120901, green: 0.3274408759, blue: 0.3263132393, alpha: 1)), radius: width * 0.006)
                
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.664, y: height * 0.095))
                    
                    path.addLine(to: CGPoint(x: width * 0.664, y: height * 0.06))
                    
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.67, y: height * 0.058),
                        control: CGPoint(x: width * 0.6, y: height * 0.054)
                    )
                }
                .fill(RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2466896905, green: 0.1005800248, blue: 0.08902106072, alpha: 1)), Color(#colorLiteral(red: 0.5233400133, green: 0.1424159802, blue: 0.171845304, alpha: 1))]),
                    center: .center,
                    startRadius: width * 0.7,
                    endRadius: width * 0.55
                ))
                .shadow(color: Color(#colorLiteral(red: 0.5823119963, green: 0.3967289921, blue: 0.395362742, alpha: 1)), radius: width * 0.005)
            }
        }
        .frame(width: width, height: width * 1.5)
    }
}

struct ElementsOnHair_Previews: PreviewProvider {
    static var previews: some View {
        ElementsOnHair(width: 422)
    }
}
