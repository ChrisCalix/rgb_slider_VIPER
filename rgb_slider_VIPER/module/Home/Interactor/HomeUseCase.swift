//
//  HomeUseCase.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

protocol HomeUseCase: AnyObject {

    func loadRGBColor() -> (red: Float, green: Float, blue: Float)
    func saveRGBColor(rgb: (red: Float, green: Float, blue:  Float)) -> ()
}
