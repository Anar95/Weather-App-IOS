//
//  ContentView.swift
//  WeatherAppIOS
//
//  Created by Anar Abbas on 12.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location{
                Text("Your coordinates \(location.longitude) , \(location.latitude)")
                
                
            } else {
                if locationManager.isloading{
                    LoadingView ()
                } else{
                    WelcomeView()
                        .environmentObject(locationManager)
                    
                    
                }
            }
            
        }
        
        .background(Color(hue: 0.627, saturation: 0.516, brightness: 0.956))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
