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
          .listRowInsets(.init(top:80 , leading: 10, bottom: 0, trailing: 20))
        } header: {
          Text("healthy")
        }
        .headerProminence(.increased)
    
        Section {
            ForEach(unhealthFoods) { food in
              FoodCustomCell(food: food)
                .listRowBackground(food.isFavorite ? Color.green : Color.pink)
            }
            .listRowSeparatorTint(.white)
        } header: {
          Text("unhealthy food")
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
      .scrollContentBackground(.hidden)
      .background(Color.mint)
      .environment(\.defaultMinListHeaderHeight, 400)

      
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
        .listStyle(.grouped)
      //watchOS - tvOS 13+, tvOS 13+
        .previewDisplayName("Inset")
    }
}
