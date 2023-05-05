//
//  FoodListScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-04.
//

import SwiftUI

struct FoodListScreen: View {
    @State private var foods = Food.preview()
  
    var body: some View {
      NavigationView {
        List(foods) { food in
          HStack {
            Text(food.icon)
            Text(food.name)
          }
        }//list
        .toolbar {
          Button {
            let newFood = Food(name: "new", icon: "\(foods.count)", isFavorite: false)
            
            withAnimation {
              foods.append(newFood)
            }
          } label: {
            Label("Add", systemImage: "plus")
          }
        }
      }
  
      
    }
}

struct FoodListScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodListScreen()
    }
}
