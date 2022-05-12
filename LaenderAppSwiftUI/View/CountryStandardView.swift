//
//  ContentView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 10.05.22.
//

import SwiftUI

struct CountryStandardView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    let countries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    var body: some View {
        NavigationView {
            CountryListView(countries: countries)
                .navigationBarTitle("Länder")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountryStandardView()
            .environmentObject(UserDefaultsManager())
    }
}
