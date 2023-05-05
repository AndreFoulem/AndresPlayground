//
//  Food.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-04.
//

import Foundation

struct Food: Identifiable {
  var name: String
  var icon: String
  var isFavorite: Bool
  let id = UUID()
  
  static func preview() -> [Food] {
    [
      Food(name: "Apple", icon: "\u{1F347}", isFavorite: true),
      Food(name: "Banada", icon: "🍌", isFavorite: false),
      Food(name: "Cherry", icon: "🍒", isFavorite: false),
      Food(name: "Mango", icon: "🥭", isFavorite: true),
      Food(name: "Kiwi", icon: "🥝", isFavorite: true),
      Food(name: "Strawberry", icon: "🍓", isFavorite: false),
      Food(name: "Grapes", icon: "🍇", isFavorite: true)
    ]
  }
  
  static func unhealthyPreview() -> [Food] {
    [Food(name: "Pizza", icon: "🍕", isFavorite: true),
    Food(name: "Burger", icon: "🍔", isFavorite: false)]
  }
}
