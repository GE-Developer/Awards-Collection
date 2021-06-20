//
//  FirstFigure.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 19.06.2021.
//

import SwiftUI

struct FirstFigure: View {
    let width: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = width * 1.5
            
            // MARK: - Лицо
            Path { path in
                path.move(to: CGPoint(x: width * 0.34, y: height * 0.96))
                
                path.addLine(to: CGPoint(x: width * 0.63, y: height * 0.96))
                
                path.addLine(to: CGPoint(x: width * 0.88, y: height * 0.64))
                
                path.addLine(to: CGPoint(x: width * 0.913, y: height * 0.5))
                
                path.addLine(to: CGPoint(x: width * 0.893, y: height * 0.46))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.91, y: height * 0.198),
                    control: CGPoint(x: width * 0.915, y: height * 0.3)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.85, y: height * 0.51),
                    control: CGPoint(x: width * 0.9, y: height * 0.3)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.14, y: height * 0.51),
                    control: CGPoint(x: width * 0.5, y: height * 0.65)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.091, y: height * 0.185),
                    control: CGPoint(x: width * 0.1, y: height * 0.3)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.102, y: height * 0.455),
                    control: CGPoint(x: width * 0.08, y: height * 0.3)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.09, y: height * 0.49),
                    control: CGPoint(x: width * 0.1, y: height * 0.46)
                )
                
                path.addLine(to: CGPoint(x: width * 0.12, y: height * 0.70))
                
                path.addLine(to: CGPoint(x: width * 0.34, y: height * 0.96))
                
            }
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8398113251, green: 0.6788377166, blue: 0.3643377423, alpha: 1)), Color(#colorLiteral(red: 0.7275986081, green: 0.5750767229, blue: 0.2718470228, alpha: 1))]),
                center: .center,
                startRadius: width * 0.3,
                endRadius: width * 0.6
            ))
            
            // MARK: - Щека правая золотая
            Path { path in
                path.move(to: CGPoint(x: width * 0.3165, y: height * 0.953))
                
                path.addLine(to: CGPoint(x: width * 0.37, y: height * 0.95))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.34, y: height * 0.88),
                    control: CGPoint(x: width * 0.35, y: height * 0.94)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.287, y: height * 0.8),
                    control: CGPoint(x: width * 0.33, y: height * 0.85)
                )
                
                path.addLine(to: CGPoint(x: width * 0.14, y: height * 0.64))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.115, y: height * 0.56),
                    control: CGPoint(x: width * 0.115, y: height * 0.6)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.087, y: height * 0.49),
                    control: CGPoint(x: width * 0.105, y: height * 0.5)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.07, y: height * 0.56),
                    control: CGPoint(x: width * 0.06, y: height * 0.5)
                )
                
                path.addLine(to: CGPoint(x: width * 0.082, y: height * 0.58))
                
                path.addLine(to: CGPoint(x: width * 0.089, y: height * 0.62))
                
                path.addLine(to: CGPoint(x: width * 0.197, y: height * 0.84))
                
                path.addLine(to: CGPoint(x: width * 0.3165, y: height * 0.953))
            }
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7985611064, green: 0.6572520831, blue: 0.3815595745, alpha: 1)), Color(#colorLiteral(red: 0.6357985735, green: 0.5022894144, blue: 0.2368019521, alpha: 1))]),
                center: .center,
                startRadius: width * 0.573,
                endRadius: width * 0.640
            ))
            
            // MARK: - Щека левая золотая
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
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7985611064, green: 0.6572520831, blue: 0.3815595745, alpha: 1)), Color(#colorLiteral(red: 0.6357985735, green: 0.5022894144, blue: 0.2368019521, alpha: 1))]),
                center: .center,
                startRadius: width * 0.573,
                endRadius: width * 0.640
            ))
            
            // MARK: - Усы
            Path { path in
                path.move(to: CGPoint(x: width * 0.75, y: height * 0.84))
                
                path.addLine(to: CGPoint(x: width * 0.687, y: height * 0.9))
                
                path.addLine(to: CGPoint(x: width * 0.64, y: height * 0.88))
                
                path.addLine(to: CGPoint(x: width * 0.346, y: height * 0.88))
                
                path.addLine(to: CGPoint(x: width * 0.295, y: height * 0.905))
                
                path.addLine(to: CGPoint(x: width * 0.232, y: height * 0.842))
                
                path.addLine(to: CGPoint(x: width * 0.24, y: height * 0.832))
                
                path.addLine(to: CGPoint(x: width * 0.295, y: height * 0.88))
                
                path.addLine(to: CGPoint(x: width * 0.333, y: height * 0.863))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.5, y: height * 0.865),
                    control: CGPoint(x: width * 0.4, y: height * 0.86)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.66, y: height * 0.86),
                    control: CGPoint(x: width * 0.6, y: height * 0.86)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.695, y: height * 0.88),
                    control: CGPoint(x: width * 0.7, y: height * 0.886)
                )
                
                path.addLine(to: CGPoint(x: width * 0.75, y: height * 0.83))
                
                path.addLine(to: CGPoint(x: width * 0.75, y: height * 0.84))
            }
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1423514707, green: 0.1437608912, blue: 0.1437608912, alpha: 1)), Color(#colorLiteral(red: 0.03220745048, green: 0.03220745048, blue: 0.03220745048, alpha: 1))]),
                center: .center,
                startRadius: width * 0.65,
                endRadius: width * 0.8
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
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.641192019, green: 0.1846340001, blue: 0.172197938, alpha: 1)), Color(#colorLiteral(red: 0.1991967866, green: 0.04692240163, blue: 0.03622043822, alpha: 1))]),
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
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5165858961, green: 0.1513448266, blue: 0.1416710378, alpha: 1)), Color(#colorLiteral(red: 0.1991967866, green: 0.04692240163, blue: 0.03622043822, alpha: 1))]),
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
            .fill(RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.641192019, green: 0.1846340001, blue: 0.172197938, alpha: 1)), Color(#colorLiteral(red: 0.1991967866, green: 0.04692240163, blue: 0.03622043822, alpha: 1))]),
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
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5165858961, green: 0.1513448266, blue: 0.1416710378, alpha: 1)), Color(#colorLiteral(red: 0.1991967866, green: 0.04692240163, blue: 0.03622043822, alpha: 1))]),
                center: .center,
                startRadius: width * 0.77,
                endRadius: width * 0.31
            ), lineWidth: width * 0.008)
        }
        .frame(width: width, height: width * 1.5)
    }
}

struct HomeWorkFigure_Previews: PreviewProvider {
    static var previews: some View {
        FirstFigure(width: 422)
    }
}
