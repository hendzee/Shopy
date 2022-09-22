//
//  FeaturedTabView.swift
//  shopy
//
//  Created by Virginia Hendras on 19/09/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 250)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 14 Pro")
            .background(Color.gray)
    }
}
