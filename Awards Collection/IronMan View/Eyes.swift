//
//  Eyes.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 21.06.2021.
//

import SwiftUI

struct Eyes: View {
    let width: CGFloat
    
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
            .fill(Color(#colorLiteral(red: 0.2566669349, green: 0.2566669349, blue: 0.2566669349, alpha: 0.1998414299)))
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: width * 0.01)
            
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
            .fill(Color(#colorLiteral(red: 0.2566669349, green: 0.2566669349, blue: 0.2566669349, alpha: 0.1998414299)))
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: width * 0.01)
        }
        .frame(width: width, height: width * 1.5)
    }
}


struct Eyes_Previews: PreviewProvider {
    static var previews: some View {
        Eyes(width: 422)
    }
}
