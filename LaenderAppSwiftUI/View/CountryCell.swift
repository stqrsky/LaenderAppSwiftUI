//
//  CountryCell.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct CountryCell: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
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
            
            VStack(alignment: .leading, spacing: 6) {
                Text(country.countryName)
                    .font(.headline)
                
                Button(action: { userDefaultsManager.toggleFavoritesStatus(for: country)}) {
                    Image(systemName: userDefaultsManager.isCountryFavorite(country: country) ? "suit.heart.fill" : "suit.heart")
                        .font(.headline)
                        .foregroundColor(.pink)
                }
                .buttonStyle(BorderlessButtonStyle())
            }
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
