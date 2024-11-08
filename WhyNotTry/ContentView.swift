//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Inayat-Ali on 08/10/2024.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

       @State private var selected = "Archery"
    
    var body: some View {
        ZStack {
            (colors.randomElement() ?? .blue)
                .ignoresSafeArea()
            VStack{
                VStack{
                    Text("First iOS project using Swift").font(.largeTitle.bold()).multilineTextAlignment(.center)
                    
                    Circle().fill(colors.randomElement() ?? .blue).padding().overlay(
                        Image(systemName: "figure.\(selected.lowercased())").font(.system(size: 144)).foregroundColor(.white)
                    )
                    
                    Text("\(selected)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 1)) {
                        selected = activities.randomElement() ?? "Archery"
                    }}) {
                    Text("See Magic")
                        .font(.system(size: 24, weight: .bold)).padding()
                }.background(colors.randomElement() ?? .blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()

            }
        }
    }
}

//#Preview {
//    ContentView()
//}
