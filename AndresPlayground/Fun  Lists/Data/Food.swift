//
//  Food.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-04.
//

import Foundation

struct Food {
  var name: String
  var icon: String
  var isFavorite: Bool
  
  static func preview() -> [Food] {
    [
      Food(name: "Apple", icon: "🍎", isFavorite: true),
      Food(name: "Banada", icon: "🍌", isFavorite: false),
      Food(name: "Cherry", icon: "🍒", isFavorite: false),
      Food(name: "Mango", icon: "🥭", isFavorite: true),
      Food(name: "Kiwi", icon: "🥝", isFavorite: true),
      Food(name: "Strawberry", icon: "🍓", isFavorite: false),
      Food(name: "Grapes", icon: "🍇", isFavorite: true)
    ]
  }
}
