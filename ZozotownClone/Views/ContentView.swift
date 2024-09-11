//
//  ContentView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelected = false
    var body: some View {
        TabView() {
            HomeView().tabItem { Tab(image: TabType.home.rawValue, title: "ホーム") }
            LikedView().tabItem { Tab(image: TabType.liked.rawValue, title: "お気に入り").onTapGesture {
                isSelected.toggle()
            } }
            SearchView().tabItem { Tab(image: TabType.search.rawValue, title: "探す").onTapGesture {
                isSelected.toggle()
            } }
            RankView().tabItem { Tab(image: TabType.rank.rawValue, title: "ランキング").onTapGesture {
                isSelected.toggle()
            } }
            ProfileView().tabItem { Tab(image: TabType.profile.rawValue, title: "計測・その他").onTapGesture {
                isSelected.toggle()
            } }
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}







