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
                                Text("John Doe")
                                    .fontWeight(.semibold)
                                Image(systemName: "checkmark.shield.fill")
                                    .foregroundColor(.green)
                        }
                        
                        Text("My Group Name")
                        .padding(.top, -8)
                        .foregroundColor(.secondary)
                        .font(.system(size: 15))
                    }
                }.padding(.bottom)
                
                Text(post.getBody())
                    .padding(.bottom)
                
                Text("9:41 AM • January 1, 2020")
                .foregroundColor(.secondary)
            }.padding(.top)
            
            Divider().padding(.bottom, 5)
            
            HStack {
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "hand.thumbsup")
                    }
                }.buttonStyle(Tint())
                
                Spacer()

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "hand.thumbsdown")
                            .offset(x: 0, y: 2)
                    }
                }.buttonStyle(Tint())
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "bubble.left")
                    }
                }.buttonStyle(Tint())
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "bookmark")
                    }
                }.buttonStyle(Tint())
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                        .offset(x: 0, y: -2)
                }.buttonStyle(Tint())
                
            }
            .padding([.top, .bottom], 5)
            .padding([.leading, .trailing], 20)
            .font(.system(size: 20))
            
            Divider().padding(.top, 5)
            
            HStack {
                HStack {
                    Text("\(post.getUpvotes())")
                        .fontWeight(.bold)
                        .padding(.trailing, -2)
                    Text("upvotes")
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("\(post.getDownvotes())")
                        .fontWeight(.bold)
                        .padding(.trailing, -2)
                    Text("downvotes")
                        .foregroundColor(.secondary)
                }
            }.padding(.top, 5)
            .padding([.leading, .trailing])
            
//            Divider().padding(.top, 5)
            
            Spacer()
        }
    }
}

struct PostDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailCell()
    }
}
