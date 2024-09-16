//
//  GridProductsView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/08.
//

import SwiftUI

struct GridProductsView: View {
    var rowProducts1: [Product]
    var rowProducts2: [Product]
    @State private var showSheet = false
    @State private var tabState: Visibility = .visible
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                    GridRow {
                        ForEach(rowProducts1) { product in
                            
                            if rowProducts1.first == product { NavigationLink {
                                DetailProductView(product: product)
                                    .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                        .mask {
                                            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10))
                                        }
                                }
                            } else if rowProducts1.last == product {
                                NavigationLink {
                                    DetailProductView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                        .mask {
                                            UnevenRoundedRectangle(cornerRadii: .init(topTrailing: 10))
                                        }
                                }
                            } else {
                                NavigationLink {
                                    DetailProductView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                }
                            }
                        }
                    }
                    
                    GridRow {
                        ForEach(rowProducts2) { product in
                            
                            if rowProducts2.first == product {
                                NavigationLink {
                                    DetailProductView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                        .mask {
                                            UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 10))
                                        }
                                }
                                .transition(.scale)
                            } else if rowProducts2.last == product {
                                NavigationLink {
                                    DetailProductView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                        .mask {
                                            UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10))
                                        }
                                }
                            } else {
                                NavigationLink {
                                    DetailProductView(product: product)
                                        .toolbar(.hidden, for: .tabBar)
                                } label: {
                                    OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                }
                            }
                        }
                    }
                }
                .padding(.bottom, 100)
            }
        }
        .onTapGesture {
            print("touch")
            tabState = .hidden
        }
        .toolbar(tabState, for: .tabBar)
    }
}

#Preview {
    GridProductsView(rowProducts1: Develop.products, rowProducts2: [])
}
