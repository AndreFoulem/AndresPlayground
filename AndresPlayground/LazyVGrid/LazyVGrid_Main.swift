//
//  LazyVGrid_Main.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-04-15.
//

import SwiftUI

struct LazyVGrid_Main: View {
    let rows = [
      GridItem(.fixed(100)),
      GridItem(.adaptive(minimum: 50))
    ]
  
    var body: some View {
      ScrollView(.horizontal) {
        LazyHGrid(rows: rows) {
          ForEach(0..<100) { i in
            
            Text("Item \(i)")
              .frame(minWidth: 50, maxHeight: .infinity)
            //maxHeight infinity lets the room for the GridItem to set the fixed height then adapt for remaining cells
              .background(.yellow)
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
