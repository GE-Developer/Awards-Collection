//
//  AwardsView.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 18.06.2021.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()
    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }
    let eyesColor: Color
    var body: some View {
        NavigationView {
            CustomGridView(items: activeAwards,
                           columns: 2) { award in
                VStack {
                    award.awardView
                    Text("\(award.title)")
                        .font(.headline)
                        .bold()
                }
            }
            .navigationBarTitle("Active awards: \(activeAwards.count)")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView(eyesColor: .white)
            
            
    }
}
