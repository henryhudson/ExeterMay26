//
//  ExeterApp.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

@main
struct ExeterApp: App {
    var body: some Scene {
        WindowGroup {
          TabView {
            ContentView(universityName: "Exeter")
              .tag(0)
              .tabItem {
                TabItemView(iconImage: "house",
                            iconLabel:  "home")
              }
            
            CounterView()
              .tag(1)
              .tabItem {
                TabItemView(iconImage: "plus.circle",
                            iconLabel: "counter")
              }
            
            LatestBSVPriceView()
              .tag(2)
              .tabItem {
                TabItemView(iconImage: "bitcoinsign.circle", iconLabel: "BSV Price")
              }
          }
        }
    }
}
