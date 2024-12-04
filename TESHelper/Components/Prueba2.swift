//
//  Prueba2.swift
//  TESHelper
//
//  Created by JaLu NoVa on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    
    private let emojiList: [EmojisItem] = [
        EmojisItem(emoji: "👻", name: "Tensión areteria", description: "Ghost"),
        EmojisItem(emoji: "👽", name: "Frecuancia respiratoria", description: "Alien"),
        EmojisItem(emoji: "🤖", name: "Frecuencia cardiaca", description: "Robot"),
        EmojisItem(emoji: "🤖", name: "Temperatura", description: "Robot"),
        
    ]
    
    var body: some View {
        NavigationView {
            List(emojiList) { emojiItem in
                NavigationLink(destination: DetailView3(emojiItem: emojiItem)) {
                    HStack {
                        EmojiCircleView(emojiItem: emojiItem)
                        Text(emojiItem.name)
                            .font(.headline)
                    }.padding(7)
                }
            }
            .navigationBarTitle("Emojis")
        }
    }
}

struct DetailView3: View {
    let emojiItem: EmojisItem
    
    var body: some View {
        VStack{
            HStack{
              EmojiCircleView(emojiItem: emojiItem)
                    .padding(.trailing, 5)
                
                Text(emojiItem.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
            }
            Text(emojiItem.description)
                .padding(.top)
               
            Spacer()
        }.padding()
            .navigationBarTitle(Text(emojiItem.name), displayMode: .inline)
    }
}

struct EmojiCircleView: View {
    let emojiItem: EmojisItem
    
    var body: some View {
        ZStack {
            Text(emojiItem.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65 , height: 65)
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 3)
                )
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

struct ImageExample: View {
    var body: some View {
        Image("swift")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 90)
        
        Image(systemName: "figure.walk")
            .resizable()
    }
}
    
    struct EmojisItem: Identifiable {
        let id = UUID()
        let emoji: String
        let name: String
        let description: String
    }
