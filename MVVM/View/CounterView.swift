//
//  CounterView.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI
var age: Int = 24
struct CounterView: View {
  @StateObject var viewModel = CounterViewModel()
  
  var body: some View {
    VStack {
      Text("Number of satoshis")
        .foregroundColor(.primary)
      Text("\(viewModel.currentNumber)")
        .padding()
      
      HStack {
        Button(action: {
          viewModel.subtract()
        }, label: {
          TabItemView(iconImage: "minus",
                      iconLabel: "subtract")
        })
        
        Spacer()
        
        Button(action: {
          viewModel.add()
        }, label: {
          TabItemView(iconImage: "plus",
                      iconLabel: "add")
        })
      }
      .padding(.horizontal)
      
    }
  }

}

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CounterView()
        .preferredColorScheme(.dark)
      CounterView()
    }
  }
}
