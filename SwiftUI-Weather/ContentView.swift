//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Sadman Adib on 17/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack {
                CityTextView(cityName: "Dhaka")
                
                mainWeatherView(weatherImage: "cloud.sun.fill", temperature: 76)
            
                HStack(spacing: 25){
                    
                    weatherDayView(day: "Mon", image: "cloud.fill", temperature: 74)
                    weatherDayView(day: "Tue", image: "sun.max.fill", temperature: 78)
                    weatherDayView(day: "Wed", image: "wind.snow", temperature: 80)
                    weatherDayView(day: "Thu", image: "cloud.rain.fill", temperature: 80)
                    weatherDayView(day: "Fri", image: "sunset.fill", temperature: 80)
                   
                    
                }
                .padding()
                
                Spacer()
                
                ButtonView(buttonText: "Change Day time", buttonTextColor: .blue, backgroundColor: .white)
                
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

struct weatherDayView: View {
    
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
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

struct ButtonView: View {
    
    var buttonText: String
    var buttonTextColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button {
            print("button pressed")
        } label: {
            Text("Change Day time")
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundColor(buttonTextColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(20)
        }
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
