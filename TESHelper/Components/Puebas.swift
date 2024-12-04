//
//  Puebas.swift
//  TESHelper
//
//  Created by JaLu NoVa on 30/11/24.
//

import SwiftUI

struct PlayerView: View {
    let name: String

    var body: some View {
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}

struct Prueba: View {
    let players = [
        "Tensión arterial",
        "Frecuancia respiratoria",
        "Dani Rojas",
        "Jamie Tartt",
    ]

    var body: some View {
        NavigationStack {
            List(players, id: \.self) { player in
                NavigationLink(player, value: player)
            }
            .navigationDestination(for: String.self, destination: PlayerView.init)
            .navigationTitle("Signos vitales")
        }
    }
}
#Preview {
    Prueba()
}
