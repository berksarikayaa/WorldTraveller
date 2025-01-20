//
//  WorldTravellerApp.swift
//  WorldTraveller
//
//  Created by BBerk Sarikaya on 19.01.2025.
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
                            Text("TAB_CONVERSION")
                        }
                    }
                MapView()
                    .tabItem {
                        HStack {
                            Image(systemName: "map")
                            Text("TAB_MAP")
                        }
                    }
            }
            .accentColor(.purple)
        }
    }
}
