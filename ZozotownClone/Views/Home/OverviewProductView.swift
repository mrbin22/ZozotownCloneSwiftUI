//
//  OverviewProductView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/10.
//

import SwiftUI

struct OverviewProductView: View {
    let imageName: String
    let brand: String
    var price: String
    var isLiked: Bool
    var body: some View {
        VStack(alignment: .leading ,spacing: 5) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 155)
            
            Text(brand)
            // caption
                .font(.caption2)
                .fontWeight(.medium)
                .padding(.leading, 10)
            
            HStack(spacing: 0) {
                Text("\(price)")
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundStyle(isLiked ? .pink.opacity(0.7) : .primary.opacity(0.2))
                    .padding(.trailing, 15)
            }
            .padding(.leading, 10)
        }
        .padding(.bottom, 15)
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    //OverviewProductView(imageName: "shose", brand: "Nike Dunk", price: 15400, isLiked: true)
    HomeView()
}
