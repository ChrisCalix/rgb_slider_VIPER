//
//  AppColorDao.swift
//  rgb_slider_VIPER
//
//  Created by Christian Calixto on 18/4/23.
//

import Foundation

class AppColorDao {

    enum ColorsKey: String {
        case red = "Red"
        case green = "Green"
        case blue = "Blue"
    }
    /// save the current color in userdefaults
    /// - Parameter rgb: send the red green and blue values to save
    /// - Returns: Void
    func save(rgb: (red: Float, green: Float, blue:  Float)) -> Void {
        UserDefaults.standard.set(rgb.red, forKey: ColorsKey.red.rawValue)
        UserDefaults.standard.set(rgb.green, forKey: ColorsKey.green.rawValue)
        UserDefaults.standard.set(rgb.blue, forKey: ColorsKey.blue.rawValue)
    }


    /// return red green and blue values from userDefaults
    /// - Returns: return 3 floats with the values for red, green and blue
    func fetch() -> (red: Float, green: Float, blue: Float) {
        let red = Float(UserDefaults.standard.float(forKey: ColorsKey.red.rawValue))
        let green = Float(UserDefaults.standard.float(forKey: ColorsKey.green.rawValue))
        let blue = Float(UserDefaults.standard.float(forKey: ColorsKey.blue.rawValue))

        return (red, green, blue)
    }
}
