//
//  ScollBarsApp.swift
//  ScollBars
//
//  Created by Mohamed Alwakil on 2025-01-14.
//

import SwiftUI

@main
struct ScollBarsApp: App {
    var body: some Scene {
        WindowGroup {

            ContentView(bars: getBars())
                .preferredColorScheme(.dark)
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
            Bar(color: color, rect: .zero)
        }
    }
}


struct Bar: Hashable {
    var color: Color
    var rect: CGRect = .zero
}
