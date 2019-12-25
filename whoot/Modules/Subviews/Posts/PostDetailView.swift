//
//  PostDetailView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/21/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    var body: some View {
        List {
            PostDetailCell()
            
            ForEach((1...5), id: \.self) {_ in
                
                VStack {
                    PostCell()
                    NavigationLink(destination: PostDetailView()) {
                        EmptyView()
                    }
                }
            }
        }
        .navigationBarTitle(Text("Whoot Details"), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "ellipsis")
                .font(.system(size: 20))
        })
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView()
    }
}
