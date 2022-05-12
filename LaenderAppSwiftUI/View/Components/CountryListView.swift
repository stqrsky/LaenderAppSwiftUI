//
//  CountryListView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct CountryListView: View {
    let countries: [Country]
    
    var body: some View {
        List(countries) { country in
            NavigationLink(destination: CountryDetailView(country: country)) {
                
                CountryCell(country: country)
                
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        
        CountryListView(countries: countries)
    }
}
