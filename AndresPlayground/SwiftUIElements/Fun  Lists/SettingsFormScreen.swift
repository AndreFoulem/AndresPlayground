//
//  SettingsFormSheet.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-04.
//

import SwiftUI

enum AppearanceStyle2 {
  case dark
  case light
  case auto
}

struct SettingsFormSheet: View {
  @State var username: String = ""
  @State var isPrivate: Bool = true
  @State private var profileImageSize = false
  @State private var fontSize: CGFloat = 5
  @State private var appearance: AppearanceStyle = .auto
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SettingsFormSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFormSheet()
    }
}
