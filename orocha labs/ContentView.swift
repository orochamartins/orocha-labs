//
//  ContentView.swift
//  orocha labs
//
//  Created by Renato Martins on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showRed = true
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    
                }
                .frame(width: 200, height: 50)
                .background(.black)
                if showRed {
                        VStack {
                            
                        }
                        .frame(width: 200, height: 50)
                        .background(.red)
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .border(.blue)
            .animation(.spring(), value: showRed)
            .onTapGesture {
                showRed.toggle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
