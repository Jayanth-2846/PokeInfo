//
//  ContentView.swift
//  PokeInfo
//
//  Created by Jayanth Ambaldhage on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationView {
            List{
                ForEach(vm.filteredPokemon){
                    pokemon in
                    NavigationLink(destination: PokemonDetailView(pokemon: pokemon)){
                        PokemonRow(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("PokeInfo")
        }
       
        .searchable(text: $vm.searchText)
        .environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
