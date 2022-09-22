//
//  SectionView.swift
//  shopy
//
//  Created by Virginia Hendras on 20/09/22.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle.degrees( rotateClockWise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGrey.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.sizeThatFits)
            .frame(width: 120, height: 140)
    }
}
