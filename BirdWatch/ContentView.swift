//
//  ContentView.swift
//  BirdWatch
//
//  Created by Vin Bui on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(birds, id: \.self) { bird in
            birdInfoRow(name: bird.name, location: bird.location, image: bird.image, count: bird.count)
        }
    }
    
    private func birdInfoRow(name: String, location: String, image: String, count: Int) -> some View {
        HStack{
            Text(String(count))
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 30)
            
            VStack(alignment: .leading){
                Text(name)
                    .fontWeight(.bold)
                Text(location)
                    .fontWeight(.medium)
                    .italic()
            }
            .font(.title2)
            
            Spacer()
            
            Image(image)
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
