//
//  FruitRowView.swift
//  Fructus
//
//  Created by Zdenko Čepan on 17/07/2021.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: Properties
    var fruit: Fruit
    
    // MARK: Body
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(
                                gradient: Gradient(colors: fruit.gradientColors),
                                startPoint: .top,
                                endPoint: .bottom))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),
                        radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } // VSTACK
        } // HSTACK
    }
}

// MARK: Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
