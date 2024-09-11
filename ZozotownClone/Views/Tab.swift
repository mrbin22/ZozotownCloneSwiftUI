//
//  Tab.swift
//  ZozotownClone
//
//  Created by cmStudent on 2024/09/08.
//

import SwiftUI

struct Tab: View {
    var image: String
    var title: String
    var body: some View {
        VStack {
            Image(systemName: image)
            Text(title)
        }
    }
}


#Preview {
    
    ContentView()
}
