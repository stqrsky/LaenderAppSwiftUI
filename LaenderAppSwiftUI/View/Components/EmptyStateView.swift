//
//  EmptyStateView.swift
//  LaenderAppSwiftUI
//
//  Created by star on 12.05.22.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Image(systemName: "suit.heart")
                .font(.system(size: 100))
                .padding()
            
            Text("Keine Favoriten vorhanden.")
        }
        .foregroundColor(Color.black.opacity(0.6))
        .offset(y: -20)
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
