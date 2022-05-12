//
//  LaenderAppSwiftUIApp.swift
//  LaenderAppSwiftUI
//
//  Created by star on 10.05.22.
//

import SwiftUI

@main
struct LaenderAppSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CountryStandardView()
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Länder")
                    }
                CountryFavoriteView
                    .tabItem {
                        Image(systemName: "suit.heart")
                        Text("Favoriten")
                    }
            }
            .environmentObject(UserDefaultsManager())
        }
    }
}
