//
//  HomeViewPresentation.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

protocol HomeViewPresentation: AnyObject {

    var view: HomeView? { get }
    var router: HomeViewWireFrame? { get }
    var interactor: HomeUseCase? { get }

    func loadRGBColor() -> ()
    func saveRGBColor(with rgb: (red: Float, green: Float, blue: Float))
}
