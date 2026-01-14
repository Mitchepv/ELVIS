//
//  ContentView.swift
//  ELVIS
//
//  Created by Nia Mitchell on 1/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName=""
    
    var body: some View {
        VStack {
            Text("What's so funny 'bout")
                .fontWeight(.black)
                .foregroundStyle(.purple)
                .font(Font.largeTitle.bold())
            Spacer()
            
            Image(systemName:imageName)
                .resizable()
                .scaledToFit()
            
                .frame(width: 300, height: 300)

            Text(message)
                .fontWeight(.black)
                .foregroundStyle(.purple)
                .font(Font.largeTitle.bold())

            Spacer()
            
        HStack{
            Button("Peace") {
                message="Peace"
                imageName = "peacesign"
            }
            Button("Love") {
                message="Love"
                imageName = "heart"
            }
            
            Button("Understanding") {
                message="Understanding"
                imageName = "lightbulb"
            }
            
            }
        .tint(.purple)
        .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
