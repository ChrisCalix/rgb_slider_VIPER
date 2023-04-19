//
//  ViewController.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import UIKit

class HomeViewController: UIViewController {

    static let identifier = String(describing: HomeViewController.self)

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var rgbValuelbl: UILabel!

    var presenter: HomeViewPresentation?

    override func viewDidLoad() {
        super.viewDidLoad()

        loadRGBColor()
    }

    @IBAction func onRedValueChanged(_ sender: UISlider) {

        onColorValueChange()
    }

    @IBAction func onGreenValueChanged(_ sender: UISlider) {

        onColorValueChange()
    }

    @IBAction func onBlueValueChanged(_ sender: UISlider) {

        onColorValueChange()
    }

    fileprivate func setupSliders(with rgb: (red: Float, green: Float, blue: Float)) {

        sliderRed.value = rgb.red
        sliderGreen.value = rgb.green
        sliderBlue.value = rgb.blue
    }

    func updateRGBBackground(with rgb:(red: Float, green: Float, blue: Float)) {

        rgbValuelbl.text = "RGB (\(rgb.red.formatedDecimal()), \(rgb.green.formatedDecimal()), \(rgb.blue.formatedDecimal()))"
        view.backgroundColor = UIColor(red: rgb.red.toCGFloat(), green: rgb.green.toCGFloat(), blue: rgb.blue.toCGFloat(), alpha: 1.0)
    }

    func loadRGBColor() {

        presenter?.loadRGBColor()
    }

    func saveRGBColor(with rgb: (red: Float, green: Float, blue: Float)) {

        presenter?.saveRGBColor(with: rgb)
    }

    func onColorValueChange() {

        let red = sliderRed.value
        let green = sliderGreen.value
        let blue = sliderBlue.value

        updateRGBBackground(with: (red, green, blue))
        saveRGBColor(with: (red, green, blue))
    }
}

extension HomeViewController: HomeView {

    func loadRCGColor(rgb: (red: Float, green: Float, blue: Float)) {

        setupSliders(with: rgb)
        updateRGBBackground(with: (rgb.red, rgb.green, rgb.blue))
    }
}
