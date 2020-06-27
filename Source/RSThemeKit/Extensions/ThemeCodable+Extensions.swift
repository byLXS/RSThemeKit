//
//  ThemeCodable+Extensions.swift
//  ExampleRSThemeKit
//
//  Created by Robert on 29.02.2020.
//  Copyright © 2020 Robert. All rights reserved.
//

import UIKit

extension ThemeCodable {
    func getThemeModel() -> ThemeModel {
        return ThemeModel(identifier: identifier, textColor: UIColor.init(hexString: textColor), detailtTextColor: UIColor.init(hexString: detailtTextColor), tintColor: UIColor.init(hexString: tintColor), switchTintColor: UIColor.init(hexString: switchTintColor), backgroundColor: UIColor.init(hexString: backgroundColor), tableViewColor: UIColor.init(hexString: tableViewColor), cellBackgroundColor: UIColor.init(hexString: cellBackgroundColor), separatorColor: UIColor.init(hexString: separatorColor), navigationBarColor: UIColor.init(hexString: navigationBarColor), statusBarStyle: UIStatusBarStyle(rawValue: statusBarStyle) ?? .default, indicatorStyle: UIScrollView.IndicatorStyle(rawValue: indicatorStyle) ?? .black, selectionStyleColor: UIColor.init(hexString: selectionStyleColor), accessoryTypeViewColor: UIColor.init(hexString: accessoryTypeViewColor), switchBackgroundColor: UIColor.init(hexString: switchBackgroundColor), keyboardAppearance: UIKeyboardAppearance(rawValue: keyboardAppearance) ?? .light, blurEffect: .init(style: UIBlurEffect.Style.init(rawValue: blurEffect) ?? .light))
    }
}
