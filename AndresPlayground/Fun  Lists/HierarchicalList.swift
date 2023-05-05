//
//  HierarchicalList.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-05.
//

import SwiftUI

struct HierarchicalList: View {
    @State private var fileItems = FileItemModel.preview()
  
    var body: some View {
      List(fileItems, children: \.children) { fileItem in
        if fileItem.isFolder {
          Label(fileItem.title, systemImage: "folder.fill")
        } else {
          Label(fileItem.title, systemImage: "envelope")
        }
      }
    }
}

struct HierarchicalList_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalList()
    }
}
