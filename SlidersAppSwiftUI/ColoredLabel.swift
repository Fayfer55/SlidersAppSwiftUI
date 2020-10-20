//
//  ColoredLabel.swift
//  SlidersAppSwiftUI
//
//  Created by Кирилл Файфер on 19.10.2020.
//

import SwiftUI

struct ColoredLabel: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 150)
            .foregroundColor(Color(red: red / 255,
                                   green: green / 255,
                                   blue: blue / 255))
            .overlay(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.white, lineWidth: 4))
    }
}

struct ColoredLabel_Previews: PreviewProvider {
    static var previews: some View {
        ColoredLabel(red: 255, green: 0, blue: 0)
    }
}
