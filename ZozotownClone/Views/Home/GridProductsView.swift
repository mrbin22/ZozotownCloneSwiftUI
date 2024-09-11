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
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                    GridRow {
                        ForEach(rowProducts1) { product in
                            
                            if rowProducts1.first == product {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .mask {
                                        UnevenRoundedRectangle(cornerRadii: .init(topLeading: 10))
                                    }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                                
                            } else if rowProducts1.last == product {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .mask {
                                        UnevenRoundedRectangle(cornerRadii: .init(topTrailing: 10))
                                    }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                                
                            } else {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                            }
                        }
                    }
                    
                    GridRow {
                        
                        ForEach(rowProducts2) { product in
                            
                            if rowProducts2.first == product {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .mask {
                                        UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 10))
                                    }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                                
                                
                            } else if rowProducts2.last == product {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .mask {
                                        UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 10))
                                    }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                                
                            } else {
                                OverviewProductView(imageName: product.images.first ?? "slash_image", brand: product.brand, price: product.priceString, isLiked: product.isLiked)
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        DetailProductView(product: product)
                                    }
                            }
                        }
                    }
                }
                
                .padding(.bottom, 100)
            }
        }
    }
}

#Preview {
    GridProductsView(rowProducts1: Develop.products, rowProducts2: [])
}
