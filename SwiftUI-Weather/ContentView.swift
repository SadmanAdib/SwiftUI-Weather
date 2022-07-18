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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Location")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 20)
            
                HStack(spacing: 20){
                    
                    weatherDayView(day: "Mon", image: "cloud.fill", temperature: 74)
                    weatherDayView(day: "Tue", image: "sun.max.fill", temperature: 78)
                    weatherDayView(day: "Wed", image: "wind.snow", temperature: 80)
                    weatherDayView(day: "Thu", image: "cloud.rain.fill", temperature: 80)
                    weatherDayView(day: "Fri", image: "sunset.fill", temperature: 80)
                   
                    
                }
                .padding()
                
                Spacer()
                
                Button {
                    print("button pressed")
                } label: {
                    Text("Change Day time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(20)
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

struct weatherDayView: View {
    
    var day: String
    var image: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 30, weight: .light))
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
