//
//  HomeInteractor.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

class HomeInteractor: HomeUseCase {

    var appColorDao: AppColorDao?

    init(AppColorDao: AppColorDao = AppColorDao()) {

        self.appColorDao = AppColorDao
    }

    func loadRGBColor() -> (red: Float, green: Float, blue: Float) {

        guard let rgb = appColorDao?.fetch() else { return (.zero, .zero, .zero)}
        return rgb
    }

    func saveRGBColor(rgb: (red: Float, green: Float, blue:  Float)) {

        appColorDao?.save(rgb: rgb)
    }
}
