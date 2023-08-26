//
//  MainView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    @State private var opacity: Double = 0
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(showAward ? "Hide Award" : "Show Award")
            }
            
            Spacer()

            IronMan(width: UIScreen.main.bounds.width * 0.7,
                    opacity: opacity)
                .scaleEffect(showAward ? 1 : 0)
                .rotationEffect(showAward ? .degrees(0) : .degrees(-60))
                .animation(.spring(response: 3, dampingFraction: 1).speed(1.3))
                .gesture(TapGesture().onEnded {
                    showAward.toggle()
                }).disabled(!showAward)
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
            opacity = 0.9
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
