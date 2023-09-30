//
//  TabViewCustom.swift
//  Tabs-swiftUI
//
//  Created by Jordy Aguilar on 29/09/23.
//

import SwiftUI

struct TabViewCustom: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        TabView(selection: $selected){
            ToolbarView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
                .edgesIgnoringSafeArea(.top)
            
            Favorite(selected: $selected)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }
                .tag(1)
                .edgesIgnoringSafeArea(.top)
            
            SearchView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Phone")
                }
                .tag(2)
                .edgesIgnoringSafeArea(.top)
            
            Color.red
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
                .tag(3)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    TabViewCustom()
}
