//
//  IronMan.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 21.06.2021.
//

import SwiftUI

struct IronMan: View {
    let width: CGFloat
    let opacity: Double
    
    var body: some View {
        ZStack {
            EyesElement(width: width)
            Eyes(width: width)
            RedEyes(width: width, opacity: opacity)
        }
    }
}

struct IronMan_Previews: PreviewProvider {
    static var previews: some View {
        IronMan(width: 422, opacity: 0)
    }
}



