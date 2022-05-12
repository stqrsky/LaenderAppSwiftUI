//
//  CountryDetailView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct CountryDetailView: View {
    let country: Country
    
    var body: some View {
        VStack {
            Image(country.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
            
            List(country.details, id: \.self) { detail in
                Text(detail)
            }
            .listStyle(InsetGroupedListStyle())
            
        }
        .navigationBarItems(trailing:
                                Button(action: {}) {
                                    Image(systemName: "suit.heart")
                                        .font(.title3)
                                        .foregroundColor(.pink)
                                }
        )
        .navigationTitle(country.countryName)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        
        CountryDetailView(country: countries[0])
    }
}
