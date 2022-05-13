//
//  UserDefaultsManager.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import Foundation

class UserDefaultsManager: ObservableObject {
    private static let favoritesKey = "countryFavorites"
    
    @Published
    var favorites: [Int] = UserDefaults.standard.array(forKey: UserDefaultsManager.favoritesKey) as? [Int] ?? Array<Int>() {
        didSet {
            UserDefaults.standard.setValue(self.favorites, forKey: UserDefaultsManager.favoritesKey)
        }
    }
    
    let allCountries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    var favoriteCountries: [Country] {
        return allCountries.filter {
            favorites.contains($0.id)
        }
    }
    
    func toggleFavoritesStatus(for country: Country) {
        if favorites.contains(country.id) {
            favorites = favorites.filter { $0 != country.id }
        } else {
            favorites.append(country.id)
        }
    }
    
    func isCountryFavorite(country: Country) -> Bool {
        return favorites.contains(country.id)
    }
    
}
