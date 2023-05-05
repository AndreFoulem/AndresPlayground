//
//  ComplexListView.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-05.
//

import SwiftUI

struct ComplexListView: View {
  
    @State private var foods = Food.preview()
    @State private var unhealthFoods = Food.unhealthyPreview()
  
    var body: some View {
      List {
        Section {
          ForEach(foods) { food in
            FoodCustomCell(food: food)
          }
        } header: {
          Text("healthy")
        }
        .headerProminence(.increased)
        
        Section {
          DisclosureGroup("unhealthy") {
            ForEach(unhealthFoods) { food in
              FoodCustomCell(food: food)
            }
          }
        } 
        
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

struct FoodCustomCell: View {
  let food: Food
  var body: some View {
    HStack {
      Text(food.icon)
      Text(food.name)
      
      Image(systemName: food.isFavorite ? "heart.fill" : "heart")
    }
  }
}

struct ComplexListView_Previews: PreviewProvider {
    static var previews: some View {
        ComplexListView()
    }
}
