//
//  ProtocolMainScreen.swift
//  AndresPlayground
//
//  Created by AndreMacBook on 2023-05-07.
//

import SwiftUI


protocol ColorThemeProtocol {
  var primary: Color { get }
  var secondary: Color { get }
  var tertiary: Color { get }
}

protocol ButtonTextProtocol {
  var buttonText: String { get }
}

protocol ButtonPressedProtocol {
  func buttonPressed()
}

protocol ButtonDataSourceProtocol: ButtonTextProtocol, ButtonPressedProtocol {}

struct DefaultColorTheme: ColorThemeProtocol {
  let primary: Color = .blue
  let secondary: Color = .white
  let tertiary: Color = .gray
}

class DefaultDataSource: ButtonDataSourceProtocol {
  var buttonText: String = "Protocols are awesome"
  func buttonPressed() {
    print("Button was pressed")
  }
}

struct ProtocolMainScreen: View {
  
    let colorTheme: ColorThemeProtocol
    let dataSource: ButtonDataSourceProtocol
  
    var body: some View {
      ZStack {
        colorTheme.tertiary
          .ignoresSafeArea()
        
        Text(dataSource.buttonText)
          .font(.headline)
          .foregroundColor(colorTheme.secondary)
          .padding()
          .background(colorTheme.primary)
          .cornerRadius(10)
          .onTapGesture {
            dataSource.buttonPressed()
          }
      }
    }
}

struct ProtocolMainScreen_Previews: PreviewProvider {
    static var previews: some View {
      ProtocolMainScreen(colorTheme: DefaultColorTheme(), dataSource: DefaultDataSource())
      
    }
}
