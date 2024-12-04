//
//  AlgoritmoSVB.swift
//  TESHelper
//
//  Created by JaLu NoVa on 28/11/24.
//

import SwiftUI

struct AlgoritmoSVB: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("About")
                    Text("Software Update")
                }
                Section {
                    Text("AirDrop")
                    Text("AirPlay & Handoff")
                    Text("Picture in Picture")
                    Text("CarPlay")
                }
                Section {
                    Text("iPhone Storage")
                    Text("Background App Refresh")
                }
                Section {
                    Text("Date & Time")
                    Text("Keyboard")
                    Text("Fonts")
                    Text("Language & Region")
                }
            }
            .navigationTitle("General")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AlgoritmoSVB()
}

