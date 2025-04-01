//
//  ResizableView.swift
//  Moonshot
//
//  Created by Saephan, Nai Y (Contractor) on 3/29/25.
//

import SwiftUI

struct ResizableView: View {
    var body: some View {
        Image(.apollo8)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in size * 0.8
            }
    }
}

#Preview {
    ResizableView()
}
