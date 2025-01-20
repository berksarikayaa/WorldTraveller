//
//  WorldTravellerApp.swift
//  WorldTraveller
//
//  Created by Buket Bayhan on 19.01.2025.
//

import SwiftUI
import SwiftData

@main
struct WorldTravellerApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        HStack {
                            Image(systemName: "thermometer")
                            Text("Conversion")
                        }
                    }
                MapView()
                    .tabItem {
                        HStack {
                            Image(systemName: "map")
                            Text("Map")
                        }
                    }
            }
            .accentColor(.purple)
        }
    }
}
