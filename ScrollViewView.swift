//
//  ScrollViewView.swift
//  Moonshot
//
//  Created by Saephan, Nai Y (Contractor) on 3/29/25.
//

import SwiftUI

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ScrollViewView()
}
