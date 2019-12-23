//
//  Buttons.swift
//  whoot
//
//  Created by Carlos Estrada on 12/19/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

// View for testing button styles
struct Buttons: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            }.buttonStyle(Tint())
                .padding()
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            }.buttonStyle(RoundedFill())
                .padding()
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            }.buttonStyle(CapsuleFill())
                .padding()
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            }.buttonStyle(RoundedFillBlock())
                .padding()
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            }.buttonStyle(CapsuleFillBlock())
                .padding()
        }
    }
}

public struct Tint: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .foregroundColor(Color("Tint"))
    }
}

public struct RoundedFill: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding()
        .background(Color("Tint"))
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

public struct RoundedFillBlock: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color("Tint"))
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

public struct CapsuleFill: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding()
        .background(Capsule().fill(Color("Tint")))
        .foregroundColor(.white)
    }
}

public struct CapsuleFillBlock: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Capsule().fill(Color("Tint")))
        .foregroundColor(.white)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
