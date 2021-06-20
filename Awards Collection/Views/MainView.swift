//
//  MainView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: { showAward.toggle() }) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                        .animation(.default)
                }
            }
            Spacer()
            GradientRectangles(width: 250, height: 250)
                .offset(x: showAward ? 0 : -UIScreen.main.bounds.width)
                .animation(.easeInOut(duration: 0.7))
                
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
