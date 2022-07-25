//
//  ProductsList.swift
//  HappyPet
//
//  Created by VictorZima on 25/07/2022.
//

import SwiftUI

struct ProductsList: View {
    var body: some View {
        VStack(spacing: 20) {
            NavigationView {
                NavigationLink("go to second page", destination: Text("second view"))
            }
        }
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
