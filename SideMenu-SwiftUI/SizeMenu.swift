//
//  SizeMenu.swift
//  SideMenu-SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct SizeMenu: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.white.ignoresSafeArea()
            Text("Side Menu")
                .font(.title)
                .padding(.top, 40)
        }
        .frame(width: SizeConstants.screenWidth / 3, height: SizeConstants.screenHeight)
    }
}

#Preview {
    SizeMenu()
}
