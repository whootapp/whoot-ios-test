//
//  ProfileInfo.swift
//  whoot
//
//  Created by Carlos Estrada on 12/22/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct ProfileInfo: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Circle()
                    .frame(width: 90, height: 90)
                    .padding(.trailing)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("John Doe")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        
                        Image(systemName: "checkmark.shield.fill")
                        .foregroundColor(.green)
                    }
                    
                    
                    
                    HStack {
                        Text("123 Posts")
                        Text("•")
                        Text("1,234 points")
                    }.padding(.top, -5)
                    .foregroundColor(.secondary)
                    
                }
                
                Spacer()

            }
            
            VStack(alignment: .leading) {
                Text("About Me")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                
                Text("Hello world, welcome to my profile!")
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                        
                        Text("Edit Profile")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                }.buttonStyle(RoundedOutline())
                
                Divider()
            }.padding([.top, .bottom], 5)
            
        }.padding()
    }
}

struct ProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfo()
    }
}
