//
//  ContentView.swift
//  Fructus
//
//  Created by Zdenko Čepan on 16/07/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: Properties
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } // NAVIGATION LINK
                } // LOOP
            } // LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } // BUTTON
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
            )
        } // NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
