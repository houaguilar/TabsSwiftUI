//
//  ToolbarView.swift
//  Tabs-swiftUI
//
//  Created by Jordy Aguilar on 29/09/23.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    ForEach(0 ..< 40) { item in
                        Text("Jordy.dev")
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                    }
                }
                .navigationTitle("Listado")
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading, content: {
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }

                    })
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                        } label: {
                            Image(systemName: "plus.circle.fill")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                        } label: {
                            Image(systemName: "folder.badge.plus")
                        }
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("Bienvenido").bold()
                    }
                    
//                    ToolbarItem(placement: .bottomBar) {
//                        Button {
//                        } label: {
//                            Image(systemName: "plus.circle.fill")
//                        }
//                    }
            })
            }
        }
    }
}

#Preview {
    ToolbarView()
}
