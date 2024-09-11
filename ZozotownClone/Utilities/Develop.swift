//
//  Develop.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/11.
//

import Foundation


class Develop {
    
    /// Dummy data  array products
//  static let products: [Product] = [
//        .init(brand: "adidas", name: "スパースター", price: 10890, model: "ブラック", sizes: ["21", "22", "23", "24"], images: ["super_star"], description: "", reviews: []),
//        .init(brand: "NIKE", name: "Air Max 270", price: 12999, sizes: ["25", "26", "27", "28"], images: ["air_max_270"], description: "", reviews: []),
//        .init(brand: "Puma", name: "RS-X", price: 9990, sizes: ["22", "23", "24", "25"], images: ["rs_x"], description: "", reviews: []),
//        .init(brand: "New Balance", name: "574", price: 8990, sizes: ["23", "24", "25", "26"], images: ["nb_574"], description: "", reviews: []),
//        .init(brand: "Converse", name: "Chuck Taylor", price: 7590, sizes: ["22", "23", "24", "25"], images: ["chuck_taylor"], description: "", reviews: []),
//        .init(brand: "Vans", name: "Old Skool", price: 6990, sizes: ["24", "25", "26", "27"], images: ["old_skool"], description: "", reviews: []),
//        .init(brand: "Reebok", name: "Club C", price: 7990, sizes: ["23", "24", "25", "26"], images: ["club_c"], description: "", reviews: []),
//        .init(brand: "Under Armour", name: "Curry 7", price: 13990, sizes: ["26", "27", "28", "29"], images: ["curry_7"], description: "", reviews: []),
//        .init(brand: "Asics", name: "Gel-Lyte III", price: 11990, sizes: ["25", "26", "27", "28"], images: ["gel_lyte_iii"], description: "", reviews: []),
//        .init(brand: "Jordan", name: "Air Jordan 1", price: 15990, sizes: ["25", "26", "27", "28"], images: ["air_jordan_1"], description: "", reviews: []),
//        .init(brand: "Nike", name: "Blazer Mid '77", price: 10999, sizes: ["24", "25", "26", "27"], images: ["blazer_mid_77"], description: "", reviews: []),
//        .init(brand: "adidas", name: "UltraBoost", price: 14990, sizes: ["24", "25", "26", "27"], images: ["ultraboost"], description: "", reviews: []),
//        .init(brand: "Puma", name: "Future Rider", price: 8990, sizes: ["23", "24", "25", "26"], images: ["future_rider"], description: "", reviews: []),
//        .init(brand: "Reebok", name: "Classic Leather", price: 8490, sizes: ["23", "24", "25", "26"], images: ["classic_leather"], description: "", reviews: []),
//        .init(brand: "Vans", name: "Sk8-Hi", price: 7990, sizes: ["25", "26", "27", "28"], images: ["sk8_hi"], description: "", reviews: []),
//        .init(brand: "Converse", name: "Jack Purcell", price: 6990, sizes: ["24", "25", "26", "27"], images: ["jack_purcell"], description: "", reviews: []),
//        .init(brand: "Asics", name: "Gel-Kayano", price: 15990, sizes: ["25", "26", "27", "28"], images: ["gel_kayano"], description: "", reviews: []),
//        .init(brand: "NIKE", name: "React Element 55", price: 11999, sizes: ["24", "25", "26", "27"], images: ["react_element_55"], description: "", reviews: []),
//        .init(brand: "New Balance", name: "990v5", price: 17990, sizes: ["25", "26", "27", "28"], images: ["nb_990v5"], description: "", reviews: []),
//        .init(brand: "Jordan", name: "Air Jordan 4", price: 18990, sizes: ["25", "26", "27", "28"], images: ["air_jordan_4"], description: "", reviews: []),
//        .init(brand: "Puma", name: "Suede Classic", price: 7590, sizes: ["22", "23", "24", "25"], images: ["suede_classic"], description: "", reviews: []),
//        .init(brand: "adidas", name: "NMD_R1", price: 13990, sizes: ["24", "25", "26", "27"], images: ["nmd_r1"], description: "", reviews: []),
//        .init(brand: "Under Armour", name: "HOVR Phantom", price: 12990, sizes: ["26", "27", "28", "29"], images: ["hovr_phantom"], description: "", reviews: []),
//        .init(brand: "NIKE", name: "Air Force 1", price: 9990, sizes: ["25", "26", "27", "28"], images: ["air_force_1"], description: "", reviews: []),
//        .init(brand: "Vans", name: "Authentic", price: 6490, sizes: ["24", "25", "26", "27"], images: ["authentic"], description: "", reviews: []),
//        .init(brand: "Reebok", name: "Nano X", price: 11990, sizes: ["25", "26", "27", "28"], images: ["nano_x"], description: "", reviews: []),
//        .init(brand: "Jordan", name: "Air Jordan 11", price: 21990, sizes: ["26", "27", "28", "29"], images: ["air_jordan_11"], description: "", reviews: []),
//    ]
    
    
    static let products: [Product] = [
        .init(brand: "adidas", name: "スーパースター [Superstar] / アディダスオリジナルス adidas Originals スニーカー", price: 10890, model: "ブラック", sizes: ["21", "22", "23", "24"], images: ["super_star"], description: "", reviews: []),
        .init(brand: "NIKE", name: "Air Max 270", price: 12999, model: "Standard", sizes: ["25", "26", "27", "28"], images: ["air_max_270"], description: "", reviews: []),
        .init(brand: "Puma", name: "RS-X", price: 9990, model: "Standard", sizes: ["22", "23", "24", "25"], images: ["rs_x"], description: "", reviews: []),
        .init(brand: "New Balance", name: "574", price: 8990, model: "Classic", sizes: ["23", "24", "25", "26"], images: ["nb_574"], description: "", reviews: []),
        .init(brand: "Converse", name: "Chuck Taylor", price: 7590, model: "All Star", sizes: ["22", "23", "24", "25"], images: ["chuck_taylor"], description: "", reviews: []),
        .init(brand: "Vans", name: "Old Skool", price: 6990, model: "Classic", sizes: ["24", "25", "26", "27"], images: ["old_skool"], description: "", reviews: []),
        .init(brand: "Reebok", name: "Club C", price: 7990, model: "Standard", sizes: ["23", "24", "25", "26"], images: ["club_c"], description: "", reviews: []),
        .init(brand: "Under Armour", name: "Curry 7", price: 13990, model: "Standard", sizes: ["26", "27", "28", "29"], images: ["curry_7"], description: "", reviews: []),
        .init(brand: "Asics", name: "Gel-Lyte III", price: 11990, model: "Standard", sizes: ["25", "26", "27", "28"], images: ["gel_lyte_iii"], description: "", reviews: []),
        .init(brand: "Jordan", name: "Air Jordan 1", price: 15990, model: "Retro High OG", sizes: ["25", "26", "27", "28"], images: ["air_jordan_1"], description: "", reviews: []),
        .init(brand: "Nike", name: "Blazer Mid '77", price: 10999, model: "Vintage", sizes: ["24", "25", "26", "27"], images: ["blazer_mid_77"], description: "", reviews: []),
        .init(brand: "adidas", name: "UltraBoost", price: 14990, model: "Standard", sizes: ["24", "25", "26", "27"], images: ["ultraboost"], description: "", reviews: []),
        .init(brand: "Puma", name: "Future Rider", price: 8990, model: "Standard", sizes: ["23", "24", "25", "26"], images: ["future_rider"], description: "", reviews: []),
        .init(brand: "Reebok", name: "Classic Leather", price: 8490, model: "Standard", sizes: ["23", "24", "25", "26"], images: ["classic_leather"], description: "", reviews: []),
        .init(brand: "Vans", name: "Sk8-Hi", price: 7990, model: "High Top", sizes: ["25", "26", "27", "28"], images: ["sk8_hi"], description: "", reviews: []),
        .init(brand: "Converse", name: "Jack Purcell", price: 6990, model: "Standard", sizes: ["24", "25", "26", "27"], images: ["jack_purcell"], description: "", reviews: []),
        .init(brand: "Asics", name: "Gel-Kayano", price: 15990, model: "Standard", sizes: ["25", "26", "27", "28"], images: ["gel_kayano"], description: "", reviews: []),
        .init(brand: "NIKE", name: "React Element 55", price: 11999, model: "Standard", sizes: ["24", "25", "26", "27"], images: ["react_element_55"], description: "", reviews: []),
        .init(brand: "New Balance", name: "990v5", price: 17990, model: "Standard", sizes: ["25", "26", "27", "28"], images: ["nb_990v5"], description: "", reviews: []),
        .init(brand: "Jordan", name: "Air Jordan 4", price: 18990, model: "Retro", sizes: ["25", "26", "27", "28"], images: ["air_jordan_4"], description: "", reviews: []),
        .init(brand: "Puma", name: "Suede Classic", price: 7590, model: "Standard", sizes: ["22", "23", "24", "25"], images: ["suede_classic"], description: "", reviews: []),
        .init(brand: "adidas", name: "NMD_R1", price: 13990, model: "Standard", sizes: ["24", "25", "26", "27"], images: ["nmd_r1"], description: "", reviews: []),
        .init(brand: "Under Armour", name: "HOVR Phantom", price: 12990, model: "Standard", sizes: ["26", "27", "28", "29"], images: ["hovr_phantom"], description: "", reviews: []),
        .init(brand: "NIKE", name: "Air Force 1", price: 9990, model: "Low", sizes: ["25", "26", "27", "28"], images: ["air_force_1"], description: "", reviews: []),
        .init(brand: "Vans", name: "Authentic", price: 6490, model: "Low Top", sizes: ["24", "25", "26", "27"], images: ["authentic"], description: "", reviews: []),
        .init(brand: "Reebok", name: "Nano X", price: 11990, model: "Training", sizes: ["25", "26", "27", "28"], images: ["nano_x"], description: "", reviews: []),
        .init(brand: "Jordan", name: "Air Jordan 11", price: 21990, model: "Retro", sizes: ["26", "27", "28", "29"], images: ["air_jordan_11"], description: "", reviews: [])
    ]

    

}
