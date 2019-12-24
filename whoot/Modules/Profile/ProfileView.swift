//
//  ProfileView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ProfileInfo()
                    BadgeList()

                    
                    Spacer()
                }
                .navigationBarTitle(Text("Profile"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {}) {
                    Image(systemName: "gear")
                        .font(.system(size: 20))
                })
            }
        }.accentColor(Color("Tint"))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
