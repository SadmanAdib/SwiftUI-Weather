//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Sadman Adib on 18/7/22.
//

import SwiftUI

struct WeatherDayView: View {
    
    var day: String
    var image: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 25, weight: .light))
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .light))
                .foregroundColor(.white)
            
        }
    }
}
