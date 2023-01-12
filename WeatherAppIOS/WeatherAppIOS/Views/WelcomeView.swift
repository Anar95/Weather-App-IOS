//
//  WelcomeView.swift
//  WeatherAppIOS
//
//  Created by Anar Abbas on 12.01.2023.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    
    var body: some View {
        VStack    {
            VStack(spacing: 20){
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Pleas share your curent location to get the weather in yput area")
                    .padding()
            }
            
            .multilineTextAlignment(.center)
            .padding()
        
            
        }
        
            .frame(maxWidth: .infinity, maxHeight: : .infinity)
        }
    
    
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
