//
//  ContentView.swift
//  weatherApp
//
//  Created by Vinicius on 01/12/22.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var viewModel: WeatherViewModal

    var body: some View {
        VStack {
            Text(viewModel.cityName)
                .font(.largeTitle)
                .padding()
            Text(viewModel.temperature)
                .font(.system(size: 70))
                .bold()
            Text(viewModel.weatherIcon)
                .font(.largeTitle)
                .padding()
            Text(viewModel.weatherDescription)
                .font(.title2)
        }.onAppear(perform: viewModel.refresh)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: WeatherViewModal(weatherService: WeatherService()))
    }
}
