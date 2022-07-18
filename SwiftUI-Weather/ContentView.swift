//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Sadman Adib on 17/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Dhaka")
                
                mainWeatherView(weatherImage: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 25){
                    
                    WeatherDayView(day: "Mon", image: "cloud.fill", temperature: 74)
                    WeatherDayView(day: "Tue", image: "sun.max.fill", temperature: 78)
                    WeatherDayView(day: "Wed", image: "wind.snow", temperature: 80)
                    WeatherDayView(day: "Thu", image: "cloud.rain.fill", temperature: 80)
                    WeatherDayView(day: "Fri", image: "sunset.fill", temperature: 80)
                    
                }
                .padding()
                
                Spacer()
                
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(backgroundColor: .white, buttonTextColor: .blue)
                }
                
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct mainWeatherView: View {
    
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 30)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


