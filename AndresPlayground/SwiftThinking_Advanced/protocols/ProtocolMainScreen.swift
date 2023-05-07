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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProtocolMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolMainScreen()
    }
}
