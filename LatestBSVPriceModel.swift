//
//  LatestBSVPriceModel.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct LatestBSVPriceModel: Codable {
  let currency: String
  let rate: String
  
  static let `default` = LatestBSVPriceModel(currency: "N/A", rate: "-1")
}
