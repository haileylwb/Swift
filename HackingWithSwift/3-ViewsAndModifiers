//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hailey Wong-Budiman on 12/25/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        Text("Hello World")
          .titleStyle()
    }
}


#Preview {
    ContentView()
}
