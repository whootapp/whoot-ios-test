//
//  TabView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .font(.system(size: 20))
                    Text("Home")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "map.fill")
                        .font(.system(size: 20))
                    Text("Explore") }
                .tag(1)
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                        .font(.system(size: 20))
                    Text("Notifications")
            }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 20))
                    Text("Profile") }
                .tag(3)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
