//
//  CGPoint+Extension.swift
//  CarouselView
//
//  Created by Rikky Chavhan on 20/08/19.
//  Copyright © 2019 L&T. All rights reserved.
//

import Foundation
import UIKit

 extension CGPoint {
    init (offset: CGFloat, lateralOffset: CGFloat = 0, direction: ScrollingDirection) {
        let x = direction == .horizontal ? offset : lateralOffset
        let y = direction == .vertical ? offset : lateralOffset
        self.init(x: x, y: y)
    }
    
    func offset(forDirection direction: ScrollingDirection) -> CGFloat {
        return direction == .horizontal ? x : y
    }
    
    mutating func setOffset(_ offset: CGFloat, forDirection direction: ScrollingDirection) {
        switch direction {
            case .horizontal:
                x = offset
                break
            case .vertical:
                y = offset
                break
        }
    }
}