//
//  StarterView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct StarterView: View {
    let eyesColor: Color
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            AwardsView(eyesColor: .white)
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView(eyesColor: .white)
    }
}
