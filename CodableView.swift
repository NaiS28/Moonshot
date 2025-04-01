//
//  CodableView.swift
//  Moonshot
//
//  Created by Saephan, Nai Y (Contractor) on 3/29/25.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct CodableView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Ave",
                    "city": "Nashville"
                }
            }
            """

            let data = Data(input.utf8)
            let decoder = JSONDecoder()

            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

#Preview {
    CodableView()
}
