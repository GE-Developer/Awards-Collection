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
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                        .animation(.default)
                }
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
            
            Text("PUSH IRON MAN")
                .fontWeight(.black)
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.purple)
                .animation(.easeIn.delay(1))
                .offset(y: showAward ? 0 : 200)
            
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
