//
//  TabStateScrollView.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/15.
//

import SwiftUI

struct TabStateScrollView<Content: View>: View {
    var axis: Axis.Set
    var showsIndicator: Bool
    @Binding var tabState: Visibility
    var content: Content
    @State private var searchText = ""
    @State private var tabView = 0
    @State private var isSelected = -1
    @State var offset: CGFloat = .zero
    init(axis: Axis.Set, showsIndicator: Bool, tabState: Binding<Visibility>, @ViewBuilder content: @escaping () -> Content) {
        self.axis = axis
        self.showsIndicator = showsIndicator
        self._tabState = tabState
        self.content = content()
    }
    var body: some View {
        ScrollView(axis) {
            content
        }
        .background(
            CustomGesture {
                handlerTabState($0)
            }
        )
    }
    
    func handlerTabState(_ gesture: UIPanGestureRecognizer) {
        offset = gesture.translation(in: gesture.view).y
//        let velocityY = gesture.velocity(in: gesture.view).y
//        if velocityY < 0 {
//            if -(velocityY / 5) > 60 && tabState == .visible {
//                tabState = .hidden
//            } else {
//                if (velocityY / 5) > 40 && tabState == .hidden {
//                    tabState = .visible
//                }
//            }
//        }
        if offset >= 0 {
            tabState = .visible
        } else {
            tabState = .hidden
        }
    }
}

#Preview {
    ContentView()
}
