//
//  Product.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/11.
//

import Foundation
import SwiftUI

struct Product: Identifiable, Equatable {
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID().uuidString
    let brand: String
    let name: String
    var price: Double
    var priceString: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter.string(from: NSNumber(value: price)) ?? ""
    }
    let model: String
    let lableSize: [String]
    let sizes: [String]
    let images: [String]
    var description: String
    var isLiked: Bool = false
    var reviews: [Review]
    
}

struct DetailProduct {
    let model: String
    let material: String
    let originCountry: String
    let feature: [String]
    let relatedCategory: [String]
    
}


struct Review {
    let rating: Int
    let title: String
    let comment: String
    let purchasedItem: String
    let size: String
    let gender: Gender
    let commentDate: Date
    var emoji: [String]
}



enum Gender: String {
    case man = "男"
    case woman = "女"
}
