//
//  ContentView.swift
//  whoot
//
//  Created by Carlos Estrada on 12/18/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        MainTabView().accentColor(Color("Tint"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
