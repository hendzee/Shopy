

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0){
                        FeaturedTabView()
                        
                        TitleView(title: "Helmet")
                        
                        CategoryGridView()
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding()
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }.background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}
