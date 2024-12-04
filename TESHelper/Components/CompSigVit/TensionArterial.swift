//
//  TensionArterial.swift
//  TESHelper
//
//  Created by JaLu NoVa on 29/11/24.
//
import SwiftUI

struct TensionArterial: View {
    var body: some View {
        NavigationView {
            GridRow {
                Text("Tensión Arterial")
            }.background(.green).frame(maxWidth: .infinity).font(.title)
            Grid {
                GridRow {
                    Text("GRUPO")
                    Text("EDAD")
                    Text("RANGO")
                }
                Divider()
                    .gridCellColumns(2)
                GridRow {
                    Text("")
                    Text("")
                    Text("Sistólica Diastólica")
                }
                Divider()
                    .gridCellColumns(2)
                GridRow {
                    Text("RN")
                    Text("Naci. - 6 sem")
                    Text("70-100 / 50-68")
                }
                Divider()
                    .gridCellColumns(2)
                GridRow {
                    Text("Infante")
                    Text("7 Sem - 1 Año")
                    Text("84-106 / 65-70")
                }
                Divider()
                    .gridCellColumns(2)
                Divider()
                    .gridCellColumns(2)
                GridRow {
                    Text("Infante")
                    Text("7 Sem - 1 Año")
                    Text("84-106 / 65-70")
                }
                Divider()
                    .gridCellColumns(2)
                
            }.background(.backCellTA).font(.title3)
        }.navigationTitle("Tensión Arterial").navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    TensionArterial()
}
