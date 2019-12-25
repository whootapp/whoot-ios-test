//
//  PostDetail.swift
//  whoot
//
//  Created by Carlos Estrada on 12/20/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct PostDetailCell: View {
    var post = Post()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                // User info view
                HStack {
                    Circle().frame(width: 45, height: 45)
                    
                    VStack(alignment: .leading) {
                        HStack {
                                Text(post.getDisplayName())
                                    .fontWeight(.semibold)
                                Image(systemName: "checkmark.shield.fill")
                                    .foregroundColor(.green)
                        }
                        
                        HStack {
                            Image(systemName: "person.2.fill")
                            Text(post.getRoomName())
                        }.padding(.top, -10)
                        .foregroundColor(.secondary)
                            .font(.system(size: 15))
                    }
                }
                
                Text(post.getBody())
            }.padding(.top)
            
            PostActions()
            
            Divider().padding(.bottom, 5)
            
            Text(post.getDateCreatedString())
            .foregroundColor(.secondary)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("\(post.getCommentCount()) Comments")
                   .font(.title)
                   .fontWeight(.bold)
                
                Button(action: {}) {
                    Text("Sorted by recent")
                }.buttonStyle(Tint())
            }.padding(.bottom, 5)
            
//            Divider()
            
        }
    }
}

struct PostDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailCell()
    }
}
