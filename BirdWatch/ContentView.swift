//
//  ContentView.swift
//  BirdWatch
//
//  Created by Vin Bui on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        birdInfoRow
    }
    
    private var birdInfoRow: some View {
        HStack{
            Text("6")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 30)
            
            VStack(alignment: .leading){
                Text("Antoinette")
                    .fontWeight(.bold)
                Text("New York")
                    .fontWeight(.medium)
                    .italic()
            }
            .font(.title2)
            
            Spacer()
            
            Image("antoinette")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
