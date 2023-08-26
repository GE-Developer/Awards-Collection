//
//  ContentView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea()
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
