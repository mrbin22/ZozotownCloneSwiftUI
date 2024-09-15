//
//  HomeView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/03.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var tabView = 0
    @State private var isSelected = -1
    @State var offset: CGFloat = .zero
    @State private var tabState: Visibility = .visible
    var body: some View {
        GeometryReader { geomatry in
            Text("\(offset)")
            ZStack(alignment: .top) {
                Color.gray.opacity(0.25).ignoresSafeArea()
                    .frame(width: abs(.infinity), height: 147)
                VStack(spacing: 10) {
                    TopView(searchText: $searchText, isSelected: $isSelected, geomatry: .constant(geomatry))
                    ScrollView {
                        MidView()
                        CircleMenu(geomatry: .constant(geomatry))
                        GenericView(subtitle: nil, title: "チェックしたアイテム")
                        
                        GridProductsView(rowProducts1: Develop.products, rowProducts2: Develop.products)
                            .frame(width: .infinity,height: 500)
                            .padding(.leading, 25)
                        
                        
                        GenericView(subtitle: "チェックしたアイテム", title: "クーポン対象の人気アイテム")
                            .offset(y: -70)
                    }
                    .padding(.top, -9.8)
                    .gesture(SimultaneousGesture(offset: $offset))
                }
            }
            
            .onAppear {
                // アプリを開いた時デフォルトすべてのカテゴリを選択させる
                isSelected = 0
            }
        }
        .toolbarVisibility(offset >= 0 ? .visible : .hidden, for: .tabBar)
    }
}

#Preview {
    HomeView()
    //GenericView(subtitle: "話題のアイレムを今すぐチェック!", title: "イチ押しの秋新作コスメ")
}



struct TopView: View {
    @Binding var searchText: String
    @Binding var isSelected: Int
    @Binding var geomatry: GeometryProxy
    var body: some View {
        HStack {
            Spacer()
            Text("ZOZOTOWN")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing)
            Image(systemName: "bell")
                .font(.title)
            Image(systemName: "cart")
                .font(.title)
                .padding(.trailing, 30)
        }
        .padding(.top, 0)
        
        TextField("すべてのアイテムから探す", text: $searchText)
            .padding(.horizontal, 40)
            .frame(width: abs(.infinity), height: 50)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .overlay(
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 35)
                , alignment: .leading
            )
        
        HStack(spacing: 75) {
            Text("すべて")
                .foregroundStyle(isSelected == 0 ? .black : .gray)
                .font(.headline)
                .onTapGesture {
                    isSelected = 0
                }
            Text("シューズ")
                .foregroundStyle(isSelected == 1 ? .black : .gray)
                .font(.headline)
                .onTapGesture {
                    isSelected = 1
                }
            Text("コスメ")
                .foregroundStyle(isSelected == 2 ? .black : .gray)
                .font(.headline)
                .onTapGesture {
                    isSelected = 2
                }
        }
        .padding(.vertical, -5)
        
        Rectangle()
            .frame(width: geomatry.size.width / 3,height: 2)
            .offset(x: isSelected == 0 ? -geomatry.size.width / 3 :
                        isSelected == 1 ? 0 : geomatry.size.width / 3
            )
            .animation(.spring.speed(2), value: isSelected)
    }
}

struct MidView: View {
    @State var banner: Int = 0
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .orange, .brown, .mint]
    @State private var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            HStack(spacing: 115) {
                Image(systemName: "figure.stand")
                    .foregroundStyle(.blue)
                    .font(.title)
                
                Image(systemName: "figure.stand")
                    .foregroundStyle(.pink)
                    .font(.title)
                
                Image(systemName: "figure.stand")
                    .foregroundStyle(.yellow)
                    .font(.title)
            }
            .padding(.top, 10)
            
            TabView(selection: $banner) {
                ForEach(0..<8) { index in
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(colors[index])
                        .tag(index)
                }
                
            }
            .onReceive(timer) { _ in
                withAnimation {
                    banner = banner < 7 ? banner + 1 : 0
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 250)
            .tabViewStyle(PageTabViewStyle())
            
            // Banner クーポン
            RoundedRectangle(cornerRadius: 10)
                .fill(.pink.opacity(0.8))
                .frame(width: abs(.infinity), height: 50)
                .padding(.horizontal, 20)
        }
        .padding(.bottom, 20)
        .background(Color.gray.opacity(0.1))
    }
}

struct CircleMenu: View {
    @Binding var geomatry: GeometryProxy
    var body: some View {
        HStack(spacing: 14) {
            ForEach(0..<4) { _ in
                VStack {
                    Circle()
                        .frame(width: 80, height: 70)
                    Text("セール")
                        .font(.caption).bold()
                }
            }
        }
        .frame(width: geomatry.size.width, alignment: .top)
        .padding(.top, 15)
    }
}

struct GenericView: View {
    let subtitle: String?
    let title: String
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.gray)
                }
                Text(title)
                    .font(.headline)
            }
            Spacer()
            Text("すべて見る")
                .font(.caption.bold())
                .foregroundStyle(.cyan)
                .underline()
        }
        .padding()
    }
}
