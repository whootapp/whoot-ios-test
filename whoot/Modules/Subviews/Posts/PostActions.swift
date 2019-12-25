//
//  PostActionsView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/25/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct PostActions: View {
    var post = Post()
    
    var body: some View {
        HStack {
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Seaside, CA")
                }
            }.buttonStyle(Gray())
                .font(.callout)
            
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
}

struct PostActions_Previews: PreviewProvider {
    static var previews: some View {
        PostActions()
    }
}
