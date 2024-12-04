//
//  SignosVitales.swift
//  TESHelper
//
//  Created by JaLu NoVa on 28/11/24.
//

import SwiftUI

struct SignosVitales: View {
    
    var signos = [
        Signo(name: "Tensión Arterial", imagen: Image(systemName: "stethoscope.circle.fill")),
        Signo(name: "Frecuencia Respiratoria",imagen: Image(systemName: "wind")),
        Signo(name: "Frcuencia Cardiaca", imagen: Image(systemName: "heart.fill")),
        Signo(name: "Temperatura", imagen: Image(systemName: "thermometer.variable")),
    ]
    
    let items = ["Tensión Arterial", "Frecuencia Respiratoria", "Frcuencia Cardiaca", "Temperatura"]
    
    
    var body: some View {

            NavigationStack {
                List(signos){ signo in
                    VStack(alignment: .leading){
                        Text(signo.name)
                    }
                }.listStyle(.sidebar)
            }
        }
}
    struct Signo: Identifiable{
        var id = UUID()
        let name: String
        let imagen: Image
    }
    
    struct detailView: View {
        let item: String
        
        var body: some View {
            VStack {
                Text("Detalles de \(item)")
            }
        }
    }
    
    #Preview {
        SignosVitales()
    }
