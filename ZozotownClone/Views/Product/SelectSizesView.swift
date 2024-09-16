//
//  SelectSizesView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/16.
//

import SwiftUI

struct SelectSizesView: View {
    var product: Product
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                // top
                HStack(alignment: .bottom) {
                   
                    VStack {
                        Text("カラー・サイズ選択")
                            .font(.system(size: 15))
                        .fontWeight(.medium)
                        Text("全1色")
                            .foregroundStyle(.gray.opacity(0.8))
                            .font(.caption)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .overlay(
                        Button {
                            // close sheet
                            dismiss()
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 30)
                                Image(systemName: "xmark")
                                    .foregroundStyle(.black.opacity(0.5))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                            }
                        }, alignment: .topTrailing
                    )
                }
                Divider()
                HStack {
                    Image(product.images[0])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    Text(product.lableSize[0])
                    Spacer()
                }
                .padding(.top)
                
                Divider()
                ForEach(product.sizes, id: \.self) { size in
                    VStack {
                        HStack() {
                            VStack(alignment: .leading) {
                                Text("\(size)cm / 在庫あり")
                                    .font(.caption)
                                HStack(spacing: 5) {
                                    Image(systemName: "figure.stand")
                                        .foregroundStyle(.blue)
                                    Text(size)
                                    Image(systemName: "figure.stand")
                                        .foregroundStyle(.pink)
                                    Text(size)
                                    Image(systemName: "figure.stand")
                                        .foregroundStyle(.orange)
                                    Text(size)
                                }
                                .font(.caption)
                            }
                            Spacer()
                            addCartView(product: product)
                                .frame(width: 125, height: 30)

                            Image(systemName: "heart.fill")
                                .foregroundStyle(.gray.opacity(0.5))
                            
                        }
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    Divider()
                }
            }
        }
        .padding()
    }
    
    struct addCartView: View {
        var product: Product
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(.cyan)
                HStack(spacing: 3) {
                    Image(systemName: "cart")
                        .foregroundStyle(.white)
                    Text("カートに入れる")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
                .font(.caption)
            }
        }
    }
}

#Preview {
    SelectSizesView(product: Develop.products[0])
}
