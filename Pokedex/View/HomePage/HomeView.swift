//
//  HomeView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct HomeView: View {
    @Environment(PokedexManager.self) var manager
    @AppStorage("captured") var captured : String = String(repeating: "0", count: 151)
    
    var body: some View {
        
        NavigationStack {
            List {
                NavigationLink(destination: PokemonListView(captured: $captured)) {
                    Text("Go To Full List")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundStyle(Color.accentColor)
                }
                
                if !manager.checkNoOneCaptured(captured: captured) {
                    CapturedRowView(captured: $captured)
                }
                
                if manager.selection == nil {
                    ForEach(PokemonType.allCases, id: \.self) { type in
                        TypeRowView(currType: type, captured: $captured)
                    }
                } else {
                    TypeRowView(currType: manager.selection, captured: $captured)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        TypeFilter()
                    }
                }
            }
            .navigationTitle("Home Page")
        }
    }
}
