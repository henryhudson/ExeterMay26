//
//  ContentView.swift
//  Exeter
//
//  Created by Henry Hudson on 26/05/2021.
//

import SwiftUI

struct ContentView: View {
  var universityName: String = ""
    
    var body: some View {
      ZStack {
        Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        VStack {
          HStack {
            Text("Hello")

            
            Text(universityName)
              .fontWeight(.bold)
          }
          .foregroundColor(.white)
          .font(.largeTitle)
          
          
          
          Image("rome")
            .resizable()
            .scaledToFit()
        }
      }
      .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(universityName: "Durham")
    }
}
