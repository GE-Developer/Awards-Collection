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
            Button(action: {showAward.toggle()} ) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                        .animation(.default)
                }
            }
            
            Spacer()
            
            IronMan(
                width: UIScreen.main.bounds.width * 0.7,
                opacity: opacity
            )
                .gesture(TapGesture()
                            .onEnded { opacity = 0.9 })
    
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
