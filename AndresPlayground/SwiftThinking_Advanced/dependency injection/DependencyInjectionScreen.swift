//
//  DependencyInjectionScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-09.
//

import SwiftUI
import Combine

//struct PostModel: Identifiable, Codable {
//  let userId: Int
//  let id: Int
//  let title: String
//  let body: String
//}

class ProductionDataService {
  
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
  var cancellables = Set<AnyCancellable>()
  
  init() {
    loadPoasts()
  }
  
  private func loadPoasts() {
    ProductionDataService.shared.getData()
      .sink { _ in
        
      } receiveValue: { [weak self] returnedPosts in
        self?.dataArray = returnedPosts
      }
      .store(in: &cancellables)

  }
}


struct DependencyInjectionScreen: View {
    @StateObject private var vm = DependencyInjectionScreenVM()
  
    var body: some View {
      ScrollView {
        VStack {
          ForEach(vm.dataArray) { post in
            Text(post.title)
          }
        }
      }
    }
}

struct DependencyInjectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        DependencyInjectionScreen()
    }
}
