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

            VStack(spacing: 80){

                ForEach($bars, id: \.self) { $bar in

                    GeometryReader { proxy in

                        RoundedRectangle(cornerRadius: 40)
                            .fill(bar.color)
                            .frame(width: calculatWdith(proxy) , height: 40)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .scrollIndicators(.hidden)
            .padding()
        }
    }

    func calculatWdith(_ proxy: GeometryProxy) -> CGFloat {

        let minY = abs(proxy.frame(in: .scrollView(axis: .vertical)).minY)

//        let offset = minY > (size.height / 2) ? minY - size.height /

        return 300 * minY / size.height;
    }
}


#Preview {
    ContentView()
}
