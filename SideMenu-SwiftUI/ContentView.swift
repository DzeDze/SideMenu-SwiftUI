//
//  ContentView.swift
//  SideMenu-SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuVisible: Bool = false
    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                Color.cyan.ignoresSafeArea()
                VStack {
                    HStack {
                        BurgerButton(selected: $isMenuVisible)
                            .padding()
                        Spacer()
                    }
                    Spacer()
                    Text("This is a Text")
                    Spacer()
                }
                Color.gray
                    .ignoresSafeArea()
                    .opacity(isMenuVisible ? 0.5 : 0)
                
            }
            .offset(x: isMenuVisible ? SizeConstants.screenWidth / 3 : 0)
            .animation(.easeInOut, value: isMenuVisible)
            .onTapGesture {
                isMenuVisible = false
            }
            GeometryReader { geometry in
                SizeMenu()
                    .frame(width: geometry.size.width / 3)
                    .offset(x: isMenuVisible ? 0 : -geometry.size.width / 3)
                    .animation(.easeInOut, value: isMenuVisible) 
            }
        }
        
    }
}

#Preview {
    ContentView()
}
