//
//  Prueba3.swift
//  TESHelper
//
//  Created by JaLu NoVa on 2/12/24.
//
import SwiftUI

struct Prueba3: View {
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
                NavigationLink(destination: DetailView(item: item.0)) {
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
            .navigationTitle("Lista de Elementos")
        }
    }
}

struct DetailView: View {
    var item: String
    var body: some View {
        VStack {
            Image("\(item)")
            
            // Aquí puedes agregar más información o contenido relevante
            Text("Aquí va más información sobre \(item).")
                .font(.subheadline)
                .padding()
        }
        .navigationTitle("TABLA")
    }
}


#Preview {
    Prueba3()
}
