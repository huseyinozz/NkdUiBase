//
//  NkdUiBase.swift
//  NkdUiBase
//
//  Created by Hüseyin Öz on 9.12.2024.
//

import Foundation
import SwiftUI

struct NeoFillButton: View {
    
    var body: some View {
        Button{
            
        } label: {
            Text("Fill Button")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(Color.black)
                .cornerRadius(15)
        }
    }
}
