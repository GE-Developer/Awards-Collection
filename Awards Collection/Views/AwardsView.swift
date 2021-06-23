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
                           columns: 2) {award, size in
                VStack {
                    award.awardView
                    Text("\(award.title)")
                        .font(.headline)
                        .bold()
                }
                .frame(width: size, height: size)
            }
            .navigationBarTitle("Active awards: \(activeAwards.count)")
        }
    }
}

//struct AwardsView: View {
//    let awards = Award.getAwards()
//    let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
//    var activeAwards: [Award] {
//        awards.filter { $0.awarded }
//    }
//    let eyesColor: Color
//
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: columns) {
//                    ForEach(activeAwards, id: \.title) { award in
//                        VStack {
//                            award.awardView
//                            Text("\(award.title)")
//                                .font(.headline)
//                                .bold()
//                        }
//                    }
//                }
//            }
//            .navigationBarTitle("Active awards: \(activeAwards.count)")
//        }
//    }
//}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView(eyesColor: .white)
            
            
    }
}
