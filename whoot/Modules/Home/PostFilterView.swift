//
//  PostFilterView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct PostFilterView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Posts near you")
                Text("Seaside, CA")
                    .foregroundColor(.secondary)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Change")
            }.buttonStyle(Tint())

        }.padding(.bottom, 5)
            .padding(.top, 5)
    }
}

struct PostFilterView_Previews: PreviewProvider {
    static var previews: some View {
        PostFilterView()
    }
}
