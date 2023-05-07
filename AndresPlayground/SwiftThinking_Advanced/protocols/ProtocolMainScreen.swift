//
//  ProtocolMainScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-07.
//

import SwiftUI

struct DefaultColorTheme {
  let primary: Color = .blue
  let secondary: Color = .white
  let tertiary: Color = .gray
}

struct ProtocolMainScreen: View {
  
    let colorTheme: DefaultColorTheme = DefaultColorTheme()
  
    var body: some View {
      ZStack {
        colorTheme.tertiary
          .ignoresSafeArea()
        
        Text("Protocols are awesome")
          .font(.headline)
          .foregroundColor(colorTheme.secondary)
          .padding()
          .background(colorTheme.primary)
          .cornerRadius(10)
      }
    }
}

struct ProtocolMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolMainScreen()
    }
}
