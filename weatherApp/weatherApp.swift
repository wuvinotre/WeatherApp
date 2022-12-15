//
//  weatherAppApp.swift
//  weatherApp
//
//  Created by Vinicius on 01/12/22.
//

import SwiftUI

@main
struct weatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            let weatherService = WeatherService()
            let viewModel = WeatherViewModal(weatherService: weatherService)
            WeatherView(viewModel: viewModel)
        }
    }
}
