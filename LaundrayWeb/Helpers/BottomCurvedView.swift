//
//  BottomCurvedView.swift
//  LaundrayWeb
//
//  Created by Arslan  on 15/12/2024.
//
import UIKit
import Foundation
class CurvedImageView: UIImageView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // Define the corners you want to curve
        let maskPath = UIBezierPath(
            roundedRect: self.bounds,
            byRoundingCorners: [.bottomLeft, .bottomRight],
            cornerRadii: CGSize(width: 20, height: 20) // Adjust radius as needed
        )
        
        // Apply the shape layer as a mask
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = maskPath.cgPath
        self.layer.mask = shapeLayer
    }
}

