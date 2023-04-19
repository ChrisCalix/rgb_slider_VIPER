//
//  Float+extension.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

extension Float {
    func formatedDecimal() -> String {
        String(format: "%.2f", self.getRGBValue())
    }

    func toCGFloat() -> CGFloat {
        CGFloat(self.getRGBValue())
    }

    private func getRGBValue() -> Float {
        Float(Int(self))/255
    }
}
