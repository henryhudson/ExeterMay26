//
//  CounterModel.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct CounterModel {
  let numberOfSatoshis: Int
  
  var add: CounterModel {
    CounterModel(numberOfSatoshis: numberOfSatoshis + 1)
  }
  
  var subtract: CounterModel {
    CounterModel(numberOfSatoshis: numberOfSatoshis - 1)
  }
}
