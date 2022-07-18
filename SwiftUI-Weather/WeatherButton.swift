//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Sadman Adib on 18/7/22.
//

import SwiftUI

struct WeatherButton: View {
    
    var backgroundColor: Color
    var buttonTextColor: Color
    
    var body: some View {
        Text("Change Day time")
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(buttonTextColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    }
}
