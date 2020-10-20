//
//  MainView.swift
//  SlidersAppSwiftUI
//
//  Created by Кирилл Файфер on 19.10.2020.
//

import SwiftUI

struct MainView: View {
    @State private var redLight = 40.0
    @State private var greenLight = 50.0
    @State private var blueLight = 100.0
    
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack(spacing: -20){
                ColoredLabel(red: redLight, green: greenLight, blue: blueLight)
                    .padding()
                
                SliderView(value: $redLight, color: .red)
                SliderView(value: $greenLight, color: .green)
                SliderView(value: $blueLight, color: .purple)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
