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
            }.buttonStyle(Gray())
                .padding()
            
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
            }.buttonStyle(RoundedOutline())
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
            }.buttonStyle(CapsuleOutline())
                .padding()
            
        }
    }
}

public struct Gray: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.gray)
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
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing])
        .background(Color("Tint"))
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

public struct RoundedOutline: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing])
        .foregroundColor(Color("Tint"))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("Tint"))
        )
    }
}

public struct CapsuleFill: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing])
        .background(Capsule().fill(Color("Tint")))
        .foregroundColor(.white)
    }
}

public struct CapsuleOutline: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing])
        .foregroundColor(Color("Tint"))
        .overlay(
            Capsule().stroke(Color("Tint"))
        )
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
