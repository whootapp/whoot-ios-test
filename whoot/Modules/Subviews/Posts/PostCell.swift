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
                            Text("John Doe")
                                .fontWeight(.semibold)
                            Image(systemName: "checkmark.shield.fill")
                                .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("1h")
                                .foregroundColor(.secondary)
                    }
                    
                    Text("My Long Group Name • Seaside, CA")
                    .padding(.top, -8)
                    .foregroundColor(.secondary)
                    .font(.system(size: 15))
                }.padding(.bottom)
                
                Text(post.getBody())
                
                HStack {
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "bubble.left")
                            Text("\(post.getCommentCount())")
                        }
                    }.buttonStyle(Gray())
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Image(systemName: "hand.thumbsup")
                            Text("\(post.getUpvotes())")
                        }
                    }.buttonStyle(Gray())
                    .padding(.trailing)

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Image(systemName: "hand.thumbsdown")
                                .offset(x: 0, y: 2)
                            Text("\(post.getDownvotes())")
                        }
                    }.buttonStyle(Gray())
                    
                }.font(.system(size: 18))
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
