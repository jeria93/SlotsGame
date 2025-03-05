//
//  ContentView.swift
//  SlotsGame
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("SwiftUI Slots Game")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Score/Credits")
            Spacer()
            HStack {
                
                Image("001-banana")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("001-banana")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("001-banana")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }.padding()
            
            Spacer()
            Button("Spin the slot!") {
                print("Spinned")
            }
            .buttonStyle(.bordered)
            .background(Color.yellow)
            .clipShape(Capsule())
            .shadow(radius: 5)
            Spacer()
            
        }
        
    }
}

#Preview {
    ContentView()
}
