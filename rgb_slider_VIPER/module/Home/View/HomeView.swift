//
//  HomeView.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

protocol HomeView: AnyObject {

    func loadRCGColor(rgb: (red: Float, green: Float, blue:  Float)) -> Void
}
