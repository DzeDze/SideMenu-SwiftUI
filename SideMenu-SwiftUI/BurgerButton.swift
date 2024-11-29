//
//  BurgerButton.swift
//  SideMenu-SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct BurgerButton: View {
    @Binding var selected: Bool
    var body: some View {
        Button(action: {
            selected.toggle()
        }) {
            Image(systemName: selected ? "x.circle" : "line.3.horizontal")
                .resizable()
                .scaledToFit()
        }
        .foregroundStyle(Color.white)
        .frame(width: 30, height: 30)
    }
}

#Preview {
    BurgerButton(selected: .constant(false))
}
