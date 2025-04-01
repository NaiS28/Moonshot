//
//  ScrollingGridView.swift
//  Moonshot
//
//  Created by Saephan, Nai Y (Contractor) on 3/29/25.
//

import SwiftUI

struct ScrollingGridView: View {
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]

    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]


// MARK: Grid Horizontal scrolling

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }


// MARK: Grid Vertical scrolling

//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
//    }
}

#Preview {
    ScrollingGridView()
}
