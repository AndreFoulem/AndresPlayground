//
//  DependencyInjectionScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-09.
//

import SwiftUI

struct PostModel {
  
}

class ProductionDataService {
  
}

class DependencyInjectionScreenVM: ObservableObject {
  @Published var dataArray: [PostModel] = []
  
  init() {}
  
  private func loadPoasts() {}
}


struct DependencyInjectionScreen: View {
    @State private var vm = DependencyInjectionScreenVM()
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DependencyInjectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        DependencyInjectionScreen()
    }
}
