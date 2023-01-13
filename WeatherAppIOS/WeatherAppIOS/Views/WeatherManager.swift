//
//  WeatherManager.swift
//  WeatherAppIOS
//
//  Created by Anar Abbas on 13.01.2023.
//

import Foundation
import CoreLocation

class WeatherManager {
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid={Type the api key we got from the https://openweathermap.org/current#geocoding site here}&unitsmetric") else { fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        let(data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fatching weather data")
            
        }
    }
    
    
}
