//
//  ContentView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelected = false
    @State private var tabState: Visibility = .visible
    var body: some View {
        TabView {
            HomeView()
            .tabItem { Tab(image: TabType.home.rawValue, title: "ホーム") }
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
    }
}

struct CustomGesture: UIViewRepresentable {
    var onChange: (UIPanGestureRecognizer) -> ()
    // Gesture ID
    private let gestureID = UUID().uuidString
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(onChange: onChange)
    }
    func makeUIView(context: Context) -> UIView {
        return UIView()
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        DispatchQueue.main.async {
            if let superView = uiView.superview?.superview,
               !(superView.gestureRecognizers?.contains(where: { $0.name == gestureID}) ?? false) {
                let gesture = UIPanGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.gestureChange(gesture:)))
                gesture.name = gestureID
                gesture.delegate = context.coordinator
                superView.addGestureRecognizer(gesture)
            }
        }
    }
    
    class Coordinator: NSObject, UIGestureRecognizerDelegate {
        var onChange: (UIPanGestureRecognizer) -> ()
        init(onChange: @escaping (UIPanGestureRecognizer) -> Void) {
            self.onChange = onChange
        }
        
        @objc
        func gestureChange(gesture: UIPanGestureRecognizer) {
            onChange(gesture)
        }
        
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    }
}

#Preview {
    ContentView()
}







