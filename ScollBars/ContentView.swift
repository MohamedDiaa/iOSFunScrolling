//
//  ContentView.swift
//  ScollBars
//
//  Created by Mohamed Alwakil on 2025-01-14.
//

import SwiftUI

struct ContentView: View {

    @State var bars: [Bar]

    var body: some View {

        ScrollView {

            VStack(spacing: 30){

                ForEach(bars, id: \.self) { bar in

                    RoundedRectangle(cornerRadius: 40)
                        .fill(bar.color)
                        .frame(width: 300, height: 40)
                        .onGeometryChange(for: CGRect.self) { proxy in
                            proxy.frame(in: .global)
                        } action: { newValue in
                            
                        }



                }
            }
        }
        .padding()
    }
}

//#Preview {
//    ContentView(colors: )
//}

#Preview {
    ContentView(bars: [Bar(color: .blue),Bar(color: .red),Bar(color: .brown),Bar(color: .white)])
}
