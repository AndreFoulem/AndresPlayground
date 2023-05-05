//
//  FileItemGroup.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-05.
//

import Foundation

struct FileItemModel: Hashable, Identifiable {
  var title: String
  let isFolder: Bool
  var children: [FileItemModel]? = nil
  let id = UUID()
  
  static func preview() -> [FileItemModel] {
    [
      FileItemModel(title: "Inbox", isFolder: true, children: [FileItemModel(title: "my first email", isFolder: false),
                                                               FileItemModel(title: "second email", isFolder: false)]),
      FileItemModel(title: "Archived", isFolder: true, children: [FileItemModel(title: "work", isFolder: true,
                                                                                children: [FileItemModel(title: "New Task", isFolder: false)]),
                                                               FileItemModel(title: "personal", isFolder: true,
                                                                             children: [FileItemModel(title: "expri", isFolder: false)]) ])
      
    ]
  }
}
