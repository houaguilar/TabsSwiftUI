//
//  Favorite.swift
//  Tabs-swiftUI
//
//  Created by Jordy Aguilar on 29/09/23.
//

import SwiftUI

struct Favorite: View {
    
    @Binding var selected: Int
    
    var body: some View {
        ZStack {
            Color.cyan
            Button(action: {
                selected = 3
            }) {
                Text("Ir a profile")
            }
            
        }
    }
}

#Preview {
    Favorite(selected: .constant(0))
}
