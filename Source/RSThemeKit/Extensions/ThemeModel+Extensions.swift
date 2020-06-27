//
//  ThemeModel+Extensions.swift
//  ExampleRSThemeKit
//
//  Created by Robert on 29.02.2020.
//  Copyright © 2020 Robert. All rights reserved.
//

import UIKit

extension ThemeModel {
    func getCodable() -> ThemeCodable {
        return ThemeCodable(identifier: identifier, textColor: textColor.toHexString(), detailtTextColor: detailtTextColor.toHexString(), tintColor: tintColor.toHexString(), switchTintColor: switchTintColor.toHexString(), backgroundColor: backgroundColor.toHexString(), tableViewColor: tableViewColor.toHexString(), cellBackgroundColor: cellBackgroundColor.toHexString(), separatorColor: separatorColor.toHexString(), navigationBarColor: navigationBarColor.toHexString(), statusBarStyle: statusBarStyle.rawValue, indicatorStyle: indicatorStyle.rawValue, selectionStyleColor: selectionStyleColor.toHexString(), accessoryTypeViewColor: accessoryTypeViewColor.toHexString(), switchBackgroundColor: switchBackgroundColor.toHexString(), keyboardAppearance: keyboardAppearance.rawValue, blurEffect: blurEffect.accessibilityNavigationStyle.rawValue)
    }
}

