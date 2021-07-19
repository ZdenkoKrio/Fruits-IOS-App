//
//  FruitModel.swift
//  Fructus
//
//  Created by Zdenko Čepan on 16/07/2021.
//

import SwiftUI

// MARK: Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
