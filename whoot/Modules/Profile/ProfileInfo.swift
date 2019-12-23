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
                    Text("John Doe")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("10 Posts")
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "checkmark.shield.fill")
                .foregroundColor(.green)
                .font(.system(size: 24))
            }
            
            Spacer()
            
        }.padding()
    }
}

struct ProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfo()
    }
}
