//
//  HomeView.swift
//  ScollBars
//
//  Created by Mohamed Alwakil on 2025-01-14.
//

import SwiftUI

struct HomeView: View {

    @State var bars: [Bar]
    var size: CGSize

    var body: some View {

        ScrollView {

            LazyVStack(spacing: 60){

                ForEach($bars, id: \.self) { $bar in

                    GeometryReader { proxy in

                        HStack {
                            RoundedRectangle(cornerRadius: 40)
                                .fill(bar.color)
                                .frame(width: calculatWdith(proxy) , height: 40)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

                    }
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .padding()
        }
        .scrollIndicators(.hidden)

    }

    func calculatWdith(_ proxy: GeometryProxy) -> CGFloat {

        let minY = proxy.frame(in: .scrollView(axis: .vertical)).minY
        let maxWdith: CGFloat =  0.8 * size.width

        if(minY <= 0) {
            return 0
        }
        else if(minY <= size.height / 2) {
            return maxWdith * 1.5 * minY / size.height;

        }
        else if(minY > size.height) {
            return 0
        }

        else {
            return maxWdith * 1.5 * (size.height - minY) / size.height;

        }

    }
}


#Preview {
    ContentView()
}
