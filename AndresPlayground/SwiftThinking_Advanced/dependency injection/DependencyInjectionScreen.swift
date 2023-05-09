//
//  DependencyInjectionScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-09.
//

import SwiftUI
import Combine

struct PostModel: Codable {
  let userId: Int
  let id: Int
  let title: String
  let body: String
}

class ProductionDataService {
  static let shared = ProductionDataService()
  
  let url: URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
  
  func getData() -> AnyPublisher<[PostModel], Error> {
    URLSession.shared.dataTaskPublisher(for: url)
      .map({ $0.data })
      .decode(type: [PostModel].self, decoder: JSONDecoder())
      .receive(on: DispatchQueue.main)
      .eraseToAnyPublisher()
  }
  
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
