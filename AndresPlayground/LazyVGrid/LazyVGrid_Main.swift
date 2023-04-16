//
//  LazyVGrid_Main.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-04-15.
//

import SwiftUI

struct LazyVGrid_Main: View {
    let columns = [
      GridItem(.fixed(80)),
      GridItem(.fixed(100), alignment: .trailing)
//      GridItem(.flexible(minimum: 30))
    ]
  
    var body: some View {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(0..<100) { i in
            
            Text("Item \(i)")
              .background(.yellow.gradient)
            
          }
        }
      }
      
    }
}

struct LazyVGrid_Main_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_Main()
    }
}
