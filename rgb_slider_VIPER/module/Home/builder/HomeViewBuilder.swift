//
//  HomeViewBuilder.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import UIKit

class HomeViewBuilder {

    static func assembleModule() -> UIViewController? {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let view = storyboard.instantiateViewController(withIdentifier: HomeViewController.identifier) as? HomeViewController
        let presenter = HomeViewPresenter()
        let interactor = HomeInteractor()
        let router = HomeViewRouter()

        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        router.viewController = view

        return view
    }
}
