//
//  CounterViewModel.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

class CounterViewModel: ObservableObject {
  @Published private var model = CounterModel(numberOfSatoshis: 0)
  
  var currentNumber: Int {
    model.numberOfSatoshis
  }
  
  func add() {
    model = model.add
  }
  
  func subtract() {
    model = model.subtract
  }
}
