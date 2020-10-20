//
//  SliderView.swift
//  SlidersAppSwiftUI
//
//  Created by Кирилл Файфер on 19.10.2020.
//

import SwiftUI

struct SliderView: View {
    @State private var showAlert = false
    @Binding var value: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround((value)))")
                .frame(width: 31)
            Slider(value: $value, in: 0...255)
                .accentColor(color)
            TextField("",
                      value: $value,
                      formatter: NumberFormatter(),
                      onCommit: { checkEnteredNumber() })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .alert(isPresented: $showAlert, content: {
                    Alert(
                        title: Text("Wrong format!"),
                        message: Text("Please enter number between 0 and 255")
                    ) 
                })
                .frame(width: 45)
        }
        .padding()
    }
}

extension SliderView {
    private func checkEnteredNumber() {
        guard value >= 0, value <= 255 else {
            value = 0
            showAlert = true
            return
        }
    }
}
