//
//  CountryCell.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct CountryCell: View {
    let country: Country
    
    var body: some View {
        HStack(spacing: 14) {
            Image(country.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                )
            
            Text(country.countryName)
                .font(.headline)
        }
        .padding([.top, .bottom], 10)
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        
        CountryCell(country: countries[0])
    }
}
