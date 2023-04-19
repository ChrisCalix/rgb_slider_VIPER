//
//  HomeViewPresenter.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

class HomeViewPresenter: HomeViewPresentation {

    var view: HomeView?
    var router: HomeViewWireFrame?
    var interactor: HomeUseCase?

    func loadRGBColor() {

        DispatchQueue.global(qos: .background).async { [weak self] in

            guard let self else { return }
            guard let rgb = self.interactor?.loadRGBColor() else { return }
            DispatchQueue.main.async { [weak self] in

                guard let self else { return }
                self.view?.loadRCGColor(rgb: rgb)
            }
        }
    }

    func saveRGBColor(with rgb: (red: Float, green: Float, blue: Float)) {

        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let self else { return }
            self.interactor?.saveRGBColor(rgb: rgb)
        }
    }

}
