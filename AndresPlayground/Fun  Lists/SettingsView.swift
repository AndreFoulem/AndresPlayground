//
//  SettingsView.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-01.
//

import SwiftUI

enum AppearanceStyle {
  case dark
  case light
  case auto
}

struct SettingsView: View {
  @State var username: String = ""
  @State var isPrivate: Bool = true
  @State private var profileImageSize = false
  @State private var fontSize: CGFloat = 5
  @State private var appearance: AppearanceStyle = .auto
  
  var body: some View {

      List {
        Section {
          TextField("Username", text: $username)
          Toggle(isOn: $isPrivate) {
            Text("Private Account")
          }
        } header: { Text("Profile") }
        
        Section {
          Slider(value: $fontSize, in: 1...10) {
          Label("Default Font Size", systemImage: "text.magnigyingglass")
          }
          
          Picker("Appearance", selection: $appearance) {
            Text("Dark").tag(AppearanceStyle.dark)
            Text("Light").tag(AppearanceStyle.light)
            Text("Auto").tag(AppearanceStyle.auto)
          }
        }
        
        Section {
          
        }
      }
  }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
