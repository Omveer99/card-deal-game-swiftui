//
//  ContentView.swift
//  Jai Shree Ram
//
//  Created by Omveer Panwar on 01/01/24.
//

import SwiftUI

struct ContentView: View {
     @State var PlayerCard = "card3"
     @State var CPUCard = "card13"
     @State var PlayerScore = 0
     @State var CPUScore = 0
    var body: some View {
        
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                
                HStack{
                    Spacer()
                    Image(PlayerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    DealCard()
                } label: {
                    Image("button")
                }

                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 15)
                        Text(String(PlayerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 15)
                        Text(String(CPUScore)).font(.largeTitle)

                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
        
      
     
    }
    
    func DealCard(){
        // Randomize the player cards
        var playerscorevalue = Int.random(in: 2...14)
        PlayerCard = "card" + String(playerscorevalue)
        
        // Randomize the CPU cards
        var cpuscorevalue = Int.random(in: 2...14)

        CPUCard = "card" + String(cpuscorevalue)
        
    // updating the scores
        
        if (playerscorevalue > cpuscorevalue){
            PlayerScore += 1
        } else if (playerscorevalue < cpuscorevalue){
            CPUScore += 1
        }
        else {
            //tie
        }

    }
}

#Preview {
    ContentView()
}
