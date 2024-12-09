//
//  NeoButton.swift
//  NkdUiBase
//
//  Created by Hüseyin Öz on 9.12.2024.
//

import SwiftUI

struct NeoFillButton: View {
    var title: String
    var action: () -> Void
    var backgroundColor: Color = .black
    var foregroundColor: Color = .white
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(15)
        }
    }
}
