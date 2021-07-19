//
//  OnboardingView.swift
//  Fructus
//
//  Created by Zdenko Čepan on 16/07/2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
