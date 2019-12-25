//
//  HomeView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                PostFilterView()
                
                ForEach((1...5), id: \.self) {_ in
                    
                    VStack {
                        PostCell()
                        NavigationLink(destination: PostDetailView()) {
                            EmptyView()
                        }
                    }
                }
            }
            .navigationBarTitle("Home")
        }.accentColor(Color("Tint"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
