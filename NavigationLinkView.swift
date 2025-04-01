//
//  NavigationLinkView.swift
//  Moonshot
//
//  Created by Saephan, Nai Y (Contractor) on 3/29/25.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
// MARK: NavLink inside ListView
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
        }


// MARK: NavLink w/ custom label
        
//        NavigationStack {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                VStack {
//                    Text("Thi is a label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
//                .navigationTitle("SwiftUI")
//        }
    }
}

#Preview {
    NavigationLinkView()
}
