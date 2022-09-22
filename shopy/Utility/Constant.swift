//
//  Constant.swift
//  shopy
//
//  Created by Virginia Hendras on 08/05/22.
//

import SwiftUI

// Data

let players: [Player] = Bundle.main.decode("player.json")

let categories: [Category] = Bundle.main.decode("category.json")

let products: [Product] = Bundle.main.decode("product.json")

let brands: [Brand] = Bundle.main.decode("brand.json")

// Color

let colorBackground: Color = Color("ColorBackground")

let colorGrey: Color = Color(UIColor.systemGray4)

// Layout

let columnSpacing: CGFloat = 10

let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// Image

// Font

// String

// Misc
