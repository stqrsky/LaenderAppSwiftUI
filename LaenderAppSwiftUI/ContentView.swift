//
//  ContentView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 10.05.22.
//

import SwiftUI

struct ContentView: View {
    let countries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    var body: some View {
        List(countries) { country in 
            Text(country.countryName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
