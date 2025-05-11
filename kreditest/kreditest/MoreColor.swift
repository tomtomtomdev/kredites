//
//  MoreColor.swift
//  kreditest
//
//  Created by dev on 08/05/25.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    static var lightGray: Color { .gray.opacity(0.5) }
    static var veryLightGray: Color { .gray.opacity(0.2) }
    static var lightBlue: Color { .blue.opacity(0.7) }
    static var veryLightBlue: Color { .blue.opacity(0.1) }
}
