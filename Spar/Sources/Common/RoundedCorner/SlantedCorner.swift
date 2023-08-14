//
//  SlantedCorner.swift
//  Spar
//
//  Created by Илья on 14.08.2023.
//

import SwiftUI

struct SlantedCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let cornerRadius: CGFloat = 20
        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addArc(
            center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
            radius: cornerRadius,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 270),
            clockwise: false
        )
        path.closeSubpath()
        return path
    }
}
