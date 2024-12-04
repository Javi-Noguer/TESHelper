//
//  Prueba3.swift
//  TESHelper
//
//  Created by JaLu NoVa on 2/12/24.
//
import SwiftUI

struct Prueba4: View {
    // Lista de tuplas con nombre del elemento y el ícono del sistema
    let items = [
        ("Tensión arterial", "star"),
        ("Frecuancia respiratoria", "heart"),
        ("Frecuencia cardiaca", "cloud"),
        ("Temperatura", "bolt")
    ]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.0) { item in
                // Cada elemento de la lista está envuelto en un NavigationLink
                NavigationLink(destination: DetailView2(detalle: item.0)) {
                    HStack {
                        // Imagen de sistema
                        Image(systemName: item.1)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 10)
                        
                        // Texto
                        Text(item.0)
                            .font(.headline)
                    }
                    .padding()
                }
            }
            .navigationTitle("SIGNOS VITALES")
        }
    }
}

struct DetailView2: View {
    var detalle: String
    
    let detalles = [
        ("Tensión arterial", "star", "TENSION"),
        ("Frecuancia respiratoria", "heart", "FRESPIRATORIA"),
        ("Frecuencia cardiaca", "cloud", "FCARDIACA"),
        ("Temperatura", "bolt", "TEMPERATURA")
    ]
    
    var body: some View {
        VStack {
            List(detalles, id: \.0) { detalle in
                    Image(detalle.2)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                }
                .navigationTitle("Detalle")
        }
    }
}
#Preview {
    Prueba4()
}
