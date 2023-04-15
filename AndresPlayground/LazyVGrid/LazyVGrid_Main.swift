//
//  LazyVGrid_Main.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-04-15.
//

import SwiftUI

struct LazyVGrid_Main: View {
    let columns = [
      GridItem(.adaptive(minimum: 100)),
//      GridItem(.fixed(50), spacing: 20),
//      GridItem(.flexible(minimum: 30))
    ]
  
    var body: some View {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(0..<100) { i in
            Text("Item \(i)")
              .frame(maxWidth: .infinity, maxHeight: .infinity)
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
