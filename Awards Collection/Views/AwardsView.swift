//
//  AwardsView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    IronMan(width: 250, eyesColor: .white)
                    GradientRectangles(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
