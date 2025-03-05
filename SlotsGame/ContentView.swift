//
//  ContentView.swift
//  SlotsGame
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits: Int = 600
    
    @State private var slot1 = "slot1"
    @State private var slot2 = "slot2"
    @State private var slot3 = "slot3"
        
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("SwiftUI Slots Game")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Credits are now: \(credits)")
            
            Spacer()
            
            HStack {
                
                Image("\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }.padding()
            
            Spacer()
            
            Button("Feeling lucky? Spin!") {
                ScoreLogic()
            }
            .buttonStyle(.bordered)
            .background(Color.yellow)
            
            Spacer()
            
        }
        
    }
    
    private func devOption() {
        slot1 = "slot1"
        slot2 = "slot1"
        slot3 = "slot1"
    }
    private func ScoreLogic() {
        let slot1Rand = Int.random(in: 1...9)
        let slot2Rand = Int.random(in: 1...9)
        let slot3Rand = Int.random(in: 1...9)
        
        slot1 = "slot\(slot1Rand)"
        slot2 = "slot\(slot2Rand)"
        slot3 = "slot\(slot3Rand)"
        
        //                devOption()
        
        if credits == 0 {
            print( "You ran out of credits!")
            return
        }
        
        if slot1 == slot2 && slot2 == slot3 {
            credits += 100
        } else {
            credits -= 50
        }
        print("Spinned")
    }
}

#Preview {
    ContentView()
}

//TODO: Reset game when credits reaches 0?
