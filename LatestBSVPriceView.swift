//
//  LatestBSVPriceView.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct LatestBSVPriceView: View {
  @StateObject var networking = Networking()
  
  var whatsOnChainURL: URL = URL(string: "https://api.whatsonchain.com/v1/bsv/main/exchangerate")!
  
  @State var bitcoinPrice = "0"
  var body: some View {
    VStack {
      
      Text(bitcoinPrice)
        .font(.largeTitle)
      
      Button(action: {
        fetchLatestBSVPrice()
      }, label: {
        Text("refresh")
      })
    }
    .onAppear {
      fetchLatestBSVPrice()
    }
  }
  
  func fetchLatestBSVPrice() {
    networking.fetch(whatsOnChainURL, defaultValue: LatestBSVPriceModel.default) {
      bitcoinPrice = $0.rate
    }
  }
}

struct LatestBSVPriceView_Previews: PreviewProvider {
  static var previews: some View {
    LatestBSVPriceView()
  }
}
