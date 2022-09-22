//
//  TitleView.swift
//  shopy
//
//  Created by Virginia Hendras on 22/09/22.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.horizontal, 20)
                .padding(.vertical, 15)
            
            Spacer()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
    }
}
