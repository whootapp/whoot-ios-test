//
//  BadgeList.swift
//  whoot
//
//  Created by Carlos Estrada on 12/23/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct BadgeList: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("My Badges")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {}) {
                    Text("View All")
                }.buttonStyle(Tint())
            }.padding([.leading, .trailing])
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach((1...10), id: \.self) {_ in
                        Circle()
                            .frame(width: 90, height: 90)
                            .padding(.leading)
                            .shadow(radius: 2)
                            .foregroundColor(Color("Tint"))
                    }
                }
            }
            
        }
    }
}

struct BadgeList_Previews: PreviewProvider {
    static var previews: some View {
        BadgeList()
    }
}
