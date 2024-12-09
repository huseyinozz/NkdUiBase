//
//  NkdUiBase.swift
//  NkdUiBase
//
//  Created by Hüseyin Öz on 9.12.2024.
//

import Foundation
import SwiftUI

public struct NeoFillButton: View {
    
    public var action: () -> Void
    public var title: String = "Fill Button"
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    
    public init(action: @escaping () -> Void = {},title: String, backgroundColor: Color, foregroundColor: Color) {
        self.action = action
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundColor(foregroundColor)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(backgroundColor)
                .cornerRadius(15)
        }
    }
}

public struct NeoBorderedButton: View {
    
    public var action: () -> Void
    public var title: String = "Bordered Button"
    public var backgroundColor: Color = Color.black
    public var borderColor: Color = Color.white
    
    public init(action: @escaping () -> Void = {},title: String, backgroundColor: Color, borderColor: Color) {
        self.action = action
        self.title = title
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            if #available(iOS 15.0, *) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .cornerRadius(15)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(borderColor)
                    }
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .cornerRadius(15)
            }
        }
    }
}

public struct NeoImageTextButton: View {
    
    public var action: () -> Void
    public var title: String = "NeoKod Image Text Button"
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {},title: String, backgroundColor: Color, foregroundColor: Color,imageName: String) {
        self.action = action
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: imageName)
                Text(title)
            }
            .foregroundColor(foregroundColor)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 52)
            .background(backgroundColor)
            .cornerRadius(15)
        }
    }
}

public struct NeoIconButton: View {
    
    public var action: () -> Void
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {},backgroundColor: Color, foregroundColor: Color,imageName: String) {
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .frame(width: 52, height: 52)
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .cornerRadius(15)
        }
    }
}

public struct NeoCircleIconButton: View {
    
    public var action: () -> Void
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {}, backgroundColor: Color, foregroundColor: Color, imageName: String) {
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .frame(width: 52, height: 52)
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .cornerRadius(26)
        }
    }
}

public struct NeoCaptionIconButton: View {
    
    public var action: () -> Void
    public var title: String = "Caption Button"
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {}, title: String, backgroundColor: Color, foregroundColor: Color, imageName: String) {
        self.action = action
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 2) {
                Image(systemName: imageName)
                    .frame(width: 52, height: 52)
                    .foregroundColor(foregroundColor)
                    .background(backgroundColor)
                    .cornerRadius(15)
                if #available(iOS 15.0, *) {
                    Text(title)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.black)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

public struct NeoToggleIconButton: View {
    
    @State private var isActive = false
    public var action: () -> Void
    
    public init(action: @escaping () -> Void = {}) {
        self.action = action
    }
    
    public var body: some View {
        if #available(iOS 15.0, *) {
            Image(systemName: "house.fill")
                .frame(width: 52, height: 52)
                .foregroundColor(isActive ? .white : .black)
                .background(isActive ? .black : .clear)
                .cornerRadius(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black)
                }
                .onTapGesture {
                    withAnimation {
                        isActive.toggle()
                    }
                    action()
                }
        } else {
            // Fallback on earlier versions
        }
    }
}

public struct NeoDashedIconButton: View {
    
    public var action: () -> Void
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {}, imageName: String) {
        self.action = action
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            if #available(iOS 15.0, *) {
                Image(systemName: imageName)
                    .frame(width: 52, height: 52)
                    .cornerRadius(15)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [8]))
                    }
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")
            }
        }
    }
}

public struct NeoButtonWithCustomEffect: View {
    
    public var action: () -> Void
    
    public init(action: @escaping () -> Void = {}) {
        self.action = action
    }
    
    public struct ButtonPressedEffect: ButtonStyle {
        public func makeBody(configuration: Configuration) -> some View {
            if #available(iOS 15.0, *) {
                configuration.label
                    .foregroundColor(configuration.isPressed ? .secondary : .primary)
                    .background(configuration.isPressed ? .secondary : .primary)
                    .animation(.easeInOut, value: configuration.isPressed)
                    .cornerRadius(15)
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")
            }
        }
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text("Custom Pressed Effect")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
        }
        .buttonStyle(ButtonPressedEffect())
    }
}

public struct NeoFillIconButton: View {
    
    public var action: () -> Void
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    public var imageName: String = "house.fill"
    
    public init(action: @escaping () -> Void = {}, backgroundColor: Color, foregroundColor: Color, imageName: String) {
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.imageName = imageName
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .foregroundColor(foregroundColor)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(backgroundColor)
                .cornerRadius(15)
        }
    }
}

public struct NeoTextWrappedButton: View {
    
    public var action: () -> Void
    public var title: String = "Text Wrapped Button"
    public var backgroundColor: Color = Color.black
    public var foregroundColor: Color = Color.white
    
    public init(action: @escaping () -> Void = {}, title: String, backgroundColor: Color, foregroundColor: Color) {
        self.action = action
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundColor(foregroundColor)
                .font(.system(size: 16, weight: .semibold))
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                .background(backgroundColor)
                .cornerRadius(15)
        }
    }
}

public struct NeoDashedBorderButton: View {
    
    public var action: () -> Void
    public var title: String = "Dashed Border Button"
    
    public init(action: @escaping () -> Void = {}, title: String) {
        self.action = action
        self.title = title
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            if #available(iOS 15.0, *) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [10]))
                    }
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")

            }
        }
    }
}

public struct NeoRadioButton: View {
    
    @State private var isActive = false
    public var action: () -> Void
    
    public init(action: @escaping () -> Void = {}) {
        self.action = action
    }
    
    public var body: some View {
        HStack(spacing: 12) {
            if #available(iOS 15.0, *) {
                Circle()
                    .fill(isActive ? .black : .clear)
                    .frame(width: 14, height: 14)
                    .cornerRadius(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 20, height: 20)
                    }
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")

            }
            Text("Radio Button")
        }
        .onTapGesture {
            withAnimation {
                isActive.toggle()
            }
            action()
        }
    }
}

public struct NeoCheckmarkButton: View {
    
    @State private var isActive = false
    public var action: () -> Void
    
    public init(action: @escaping () -> Void = {}) {
        self.action = action
    }
    
    public var body: some View {
        HStack(spacing: 12) {
            if #available(iOS 15.0, *) {
                Image(systemName: isActive ? "checkmark.square.fill" : "")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .cornerRadius(2)
                    .overlay {
                        RoundedRectangle(cornerRadius: 2)
                            .stroke(.black)
                            .frame(width: 18, height: 18)
                    }
            } else {
                // Fallback on earlier versions
                Text("Available for iOS 15.0 and later")

            }
            Text("Checkmark Button")
        }
        .onTapGesture {
            withAnimation {
                isActive.toggle()
            }
            action()
        }
    }
}

public struct NeoCheckmarkButton2: View {
    
    @State private var isActive = false
    public var action: () -> Void
    
    public init(action: @escaping () -> Void = {}) {
        self.action = action
    }
    
    public var body: some View {
        if #available(iOS 15.0, *) {
            HStack(spacing: 12) {
                Text("Full Width Checkmark")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(isActive ? .white : .black)
                
                Spacer()
                
                    Image(systemName: isActive ? "checkmark.circle.fill" : "")
                        .resizable()
                        .foregroundColor(isActive ? .white : .black)
                        .frame(width: 24, height: 24)
                        .overlay {
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(.black)
                        }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(isActive ? .black : .clear)
            .cornerRadius(15)
            .onTapGesture {
                withAnimation {
                    isActive.toggle()
                }
                action()
            }
        } else {
            // Fallback on earlier versions
            Text("Available for iOS 15.0 and later")

        }
    }
}
