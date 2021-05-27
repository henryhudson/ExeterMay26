//
//  TabItemView.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct TabItemView: View {
  var iconImage: String
  var iconLabel: String
  var body: some View {
    VStack {
      Image(systemName: iconImage)
      Text(iconLabel)
        .font(.footnote)
    }
  }
}

struct TabItemView_Previews: PreviewProvider {
  static var previews: some View {
    TabItemView(iconImage: "house",
                iconLabel: "home")
  }
}
