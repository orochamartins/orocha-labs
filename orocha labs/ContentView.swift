//
//  ContentView.swift
//  orocha labs
//
//  Created by Renato Martins on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            
            //BACKGROUND COLOR
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.004849781748, green: 0.07570656389, blue: 0.178060621, alpha: 1)))
                .edgesIgnoringSafeArea(.vertical)
            
            //COLUMNS
            ScrollView {
                HStack(spacing: 16) {
                    VStack(spacing: 16) {
                        ForEach(firstColumnStrings.indices, id: \.self) { card in
                            VStack(spacing: 10){
                                Image(firstColumnImages[card])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(8)
                                    .shadow(radius: 4)
                                Text(firstColumnStrings[card])
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                        }
                    }
                    VStack(spacing: 16) {
                        ForEach(secondColumnStrings.indices, id: \.self) { card in
                            VStack(spacing: 10){
                                Image(secondColumnImages[card])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(8)
                                    .shadow(radius: 4)
                                Text(secondColumnStrings[card])
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                        }
                    }
                }
                .padding(.top, 8)
                .padding(.bottom, 32)
                .padding(.horizontal, 16)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    let firstColumnImages = ["drams", "counter", "chair", "coffee", "surf", "teenage"]
    let secondColumnImages = ["kalita", "kyoto", "tiger", "toyota", "ultra", "wshark"]
    
    let firstColumnStrings = [ "PC 3 SV Player", "Counter-Print Pack", "Lounge Chair", "Japan Coffee Shop", "Surfing Bali", "TE TP-7"]
    let secondColumnStrings = [ "Kalita Wave", "Kyoto Temple", "Underwater Tiger", "Toyota AE86", "Apple Watch Ultra", "Whale Shark"]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
