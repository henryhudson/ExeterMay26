//
//  StacksView.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct StacksView: View {
  var circleSize: CGFloat = 100
    var body: some View {
      ScrollView {
        VStack {
          Circle()
            .foregroundColor(.secondary)
            .frame(width: 200, height: 200, alignment: .center)
          
          Circle()
            .foregroundColor(.secondary)
            .frame(width: 100, height: 100, alignment: .center)
          
          
        }
      }

    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
