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
        
      }
    }
}

struct ComplexListView_Previews: PreviewProvider {
    static var previews: some View {
        ComplexListView()
    }
}
