//
//  Country.swift
//  LaenderAppSwiftUI
//
//  Created by star on 10.05.22.
//

import Foundation

struct Country: Decodable, Identifiable {
    let id: Int
    let countryName: String
    let imageName: String
    let details: [String]
}
