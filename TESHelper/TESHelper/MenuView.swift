//
//  MenuView.swift
//  TESHelper
//
//  Created by JaLu NoVa on 28/11/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header:
                            VStack {
                    Text("TES Helper").font(.title).bold()
                }) {
                    List {
                        NavigationLink(destination:SignosVitales()){
                            Signos()
                        }
                        NavigationLink(destination:AlgoritmoSVB()){
                            Algoritmo()
                        }
                        NavigationLink(destination: RitmoRCP()){
                            Ritmo()
                        }
                        NavigationLink(destination: CalcularFCFR()){
                            Calcular()
                        }
                        NavigationLink(destination: CalculoOxigeno()){
                            Calculo()
                        }
                    }.foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}

struct Signos: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "figure.walk")
                    .resizable().bold()
            }
            VStack{
                Text("Signos Vitales") .frame(maxWidth: .infinity, maxHeight: .infinity).font(.title)
            }
        }.padding().background(.red).foregroundColor(.white)
    }
}

struct Algoritmo: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "figure.walk")
                    .resizable().bold()
            }
            VStack{
                Text("Algoritmo SVB") .frame(maxWidth: .infinity, maxHeight: .infinity).font(.title)
            }
        }.padding().background(.red).foregroundColor(.white)
    }
}

struct Ritmo: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "figure.walk")
                    .resizable().bold()
            }
            VStack{
                Text("Ritmo RCP") .frame(maxWidth: .infinity, maxHeight: .infinity).font(.title)
            }
        }.padding().background(.red).foregroundColor(.white)
    }
}

struct Calcular: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "figure.walk")
                    .resizable().bold()
            }
            VStack{
                Text("Calcular FC/FR") .frame(maxWidth: .infinity, maxHeight: .infinity).font(.title)
            }
        }.padding().background(.red).foregroundColor(.white)
    }
}

struct Calculo: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "figure.walk")
                    .resizable().bold()
            }
            VStack{
                Text("Calculo Oxígeno") .frame(maxWidth: .infinity, maxHeight: .infinity).font(.title)
            }
        }.padding().background(.red).foregroundColor(.white)
    }
}
