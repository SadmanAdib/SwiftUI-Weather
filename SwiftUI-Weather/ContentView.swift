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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Location")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                HStack{
                    
                    VStack{
                        
                        Text("Tue")
                            .font(.system(size: 40, weight: .light))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("74°")
                            .font(.system(size: 40, weight: .medium))
                            .foregroundColor(.white)
                        
                        
                    }
                    VStack{
                        
                        Text("Wed")
                            .font(.system(size: 40, weight: .light))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("70°")
                            .font(.system(size: 40, weight: .medium))
                            .foregroundColor(.white)
                        
                        
                    }
                    VStack{
                        
                        Text("Thu")
                            .font(.system(size: 40, weight: .light))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("66°")
                            .font(.system(size: 40, weight: .medium))
                            .foregroundColor(.white)
                        
                        
                    }
                    
                }
                .padding()
                
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
