//
//  IronMan.swift
//  Awards Collection
//
//  Created by Mikhail Bukhrashvili on 21.06.2021.
//

import SwiftUI

struct IronMan: View {
    let width: CGFloat
    let eyesColor: Color
    
    var body: some View {
        EyesElement(width: width, eyesColor: eyesColor)
    }
}

struct IronMan_Previews: PreviewProvider {
    static var previews: some View {
        IronMan(width: 422, eyesColor: .red)
    }
}
