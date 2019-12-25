//
//  PostView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    var post = Post()
    
    var body: some View {
        
        HStack(alignment: .top) {
            Circle()
            .frame(width: 45, height: 45)
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    HStack {
                            Text(post.getDisplayName())
                                .fontWeight(.semibold)
                            Image(systemName: "checkmark.shield.fill")
                                .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("1h")
                                .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Image(systemName: "person.2.fill")
                        Text(post.getRoomName())
                    }.padding(.top, -10)
                    .foregroundColor(.secondary)
                        .font(.system(size: 15))
                    
                }.padding(.bottom, 5)
                
                Text(post.getBody())
                
                PostActions(post: post)
            }
            
        }.padding(.top, 6)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
