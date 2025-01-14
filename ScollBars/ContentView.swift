//
//  ContentView.swift
//  ScollBars
//
//  Created by Mohamed Alwakil on 2025-01-14.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        GeometryReader {proxy in
            HomeView(bars: getBars(), size: proxy.size)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
    }
}

func getBars() -> [Bar] {
    (0..<100).map { _ in
        Color(
            red: Double.random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
    .map { color in
        Bar(color: color, point: .zero)
    }
}

struct Bar: Identifiable, Hashable {
    var id = UUID().uuidString
    var color: Color
    var point: CGPoint
}


#Preview {
    ContentView()
}
