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
                .font(.title2)
            HStack {
                Text(viewModel.temperature)
                    .font(.title3)
                    .bold()
                Text(viewModel.weatherIcon)
                    .font(.largeTitle)
            }
            Text(viewModel.weatherDescription)
                .font(.title3)
        }.onAppear(perform: viewModel.refresh)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: WeatherViewModal(weatherService: WeatherService()))
    }
}
