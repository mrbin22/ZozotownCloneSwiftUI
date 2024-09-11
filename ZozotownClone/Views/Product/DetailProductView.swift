//
//  DetailProductView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/11.
//

import SwiftUI

struct DetailProductView: View {
    var product: Product
    @State private var isShowBottomBar = false
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: false) {
                ImageTopView()
                SizesView(product: Develop.products.first!)
                
                Title(product: product)
                .padding(.leading)
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        isShowBottomBar.toggle()
                    }
                }
            }
            .overlay(alignment: .bottom) {
                if isShowBottomBar {
                    BottomMenuBar()
                        .transition(.move(edge: .bottom))
                }
            }
        
        
    }
}

#Preview {
    DetailProductView(product: Develop.products[0])
}



struct ImageTopView: View {
    let colorArray: [Color] = [
        Color.red,
        Color.blue,
        Color.green,
        Color.yellow,
        Color.orange,
        Color.purple,
        Color.pink,
        Color.gray,
        Color.black,
        Color.white
    ]
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(0..<10) { index in
                        Rectangle()
                            .fill(colorArray[index])
                            .frame(width: UIScreen.main.bounds.width, height: 500)
                            .id(index)
                        
                        
                            .overlay {
                                HStack {
                                    Button(action: {
                                        // next image
                                        withAnimation {
                                            proxy.scrollTo(index == 0 ? 9 : index - 1)
                                        }
                                    }, label: {
                                        Image(systemName: "chevron.left.circle")
                                            .font(.system(size: 35))
                                    })
                                    Spacer()
                                    Button(action: {
                                        // previous image
                                        withAnimation {
                                            proxy.scrollTo(index == 9 ? 0 : index + 1)
                                        }
                                    }, label: {
                                        Image(systemName: "chevron.right.circle")
                                            .font(.system(size: 35))
                                        
                                    })
                                }
                                .padding(.horizontal, 15)
                            }
                    }
                }
            }
        }
    }
}

struct SizesView: View {
    var product: Product
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Text(product.model)
                    .font(.callout)
                ForEach(product.sizes, id: \.self) { size in
                    HStack {
                        Text(size)
                            .bold()
                        Text("あり")
                            .fontWeight(.light)
                    }
                    .padding(.horizontal, 10)
                    .frame(maxWidth: .infinity)
                    .frame(minWidth: 80, minHeight: 30)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.17))
                    )
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
        }
        Divider()
    }
}

private struct Title: View {
    var product: Product
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "tag")
                    .foregroundStyle(.blue.opacity(0.7))
                    .font(.headline)
                    .rotationEffect(.degrees(270))
                Text(product.brand)
                    .font(.headline)
                    .foregroundStyle(.blue.opacity(0.7))
                Spacer()
            }
            .padding(.top)
            .padding(.bottom, 10)
            
            Text(product.name)
                .font(.subheadline)
                .bold()
            
            HStack(spacing: 1) {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption2)
                        .foregroundStyle(.yellow)
                }
                
                Text("(59)")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding(.leading, 5)
            }
            
            HStack(alignment: .bottom) {
                Text("\(product.priceString)")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("税込")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .offset(y: -4)
            }
            .padding(.top, 5)
            
            VStack(alignment: .leading ,spacing: 0) {
                HStack {
                    Image(systemName: "parkingsign.circle.fill")
                        .foregroundStyle(.secondary.opacity(0.6))
                    Text("ZOZOCARDなら5%還元")
                        .font(.footnote)
                    Text("495pt")
                        .font(.footnote)
                        .foregroundStyle(.pink)
                        .offset(x: -5)
                    Text("詳細")
                        .font(.footnote)
                        .foregroundStyle(.blue)
                        .offset(x: -10)
                }
                .padding(.top, 5)
                
                HStack {
                    Image(systemName: "yensign.circle")
                        .foregroundStyle(.secondary.opacity(0.6))
                    Text("ツケ払いならお支払いは")
                        .font(.footnote)
                    Text("11月11日")
                        .font(.footnote)
                        .foregroundStyle(.pink)
                        .offset(x: -5)
                    Text("詳細")
                        .font(.footnote)
                        .foregroundStyle(.blue)
                        .offset(x: -10)
                }
                .padding(.top, 5)
                
                HStack {
                    Image(systemName: "truck.box")
                        .font(.caption)
                        .foregroundStyle(.secondary.opacity(0.6))
                    
                    Text("即日配送なら最短で")
                        .font(.footnote)
                    Text("明日の午前中")
                        .font(.footnote)
                        .foregroundStyle(.pink)
                        .offset(x: -5)
                    Text("にお届け")
                        .font(.footnote)
                        .offset(x: -10)
                }
                .padding(.top, 5)
            }
        }
    }
}

private struct BottomMenuBar: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Rectangle()
            .fill(.white)
            .frame(height: 100)
            .offset(y: 35)
            .shadow(radius: 20, y: 20)
        
        HStack(alignment: .bottom) {
            Button(action: {
                // close sheet
                dismiss()
            }, label: {
                ZStack {
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 50)
                    Image(systemName: "xmark")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
            })
            
            
            Button(action: {
                // add to cart
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.cyan)
                    .frame(height: 50)
                    HStack {
                        Image(systemName: "cart")
                            .foregroundStyle(.white)
                        Text("カートに入れる")
                            .font(.headline)
                            .foregroundStyle(.white)
                    }
                }
            })
            
            Button(action: {
                // like product
            }, label: {
                VStack {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.gray)
                        .font(.title)
                    Text("21,378")
                        .font(.caption2)
                        .fontWeight(.light)
                }
            })
        }
        .padding(.top, 50)
        .padding(.horizontal)
    }
}
