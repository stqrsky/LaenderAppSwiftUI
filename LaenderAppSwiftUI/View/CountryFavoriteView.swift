//
//  CountryFavoriteView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct CountryFavoriteView: View {
    @EnvironmentObject var userDefaultsManager: UserDefaultsManager
    
    var body: some View {
        NavigationView {
            
            Group {
                if userDefaultsManager.favorites.isEmpty {
                    EmptyStateView()
                } else {
                    CountryListView(countries: userDefaultsManager.favoriteCountries)
                }
            }
            .navigationBarTitle("Favoriten")
        }
        
    }
}

struct CountryFavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        CountryFavoriteView()
    }
}
