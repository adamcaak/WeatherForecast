//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Łukasz Adamczak on 21/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 50, low: 30)
                
                DayForecast(day: "Tue", isRainy: true, high: 40, low: 20)
                
                DayForecast(day: "Wen", isRainy: false, high: 60, low: 30)
                
                DayForecast(day: "Thu", isRainy: false, high: 55, low: 25)
                
                DayForecast(day: "Fri", isRainy: false, high: 60, low: 40)
                
                DayForecast(day: "Sat", isRainy: false, high: 70, low: 30)
                
                DayForecast(day: "Sun", isRainy: true, high: 30, low: 10)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)°C")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)°C")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
