//
//  ThemeCodable.swift
//  ExampleRSThemeKit
//
//  Created by Robert on 29.02.2020.
//  Copyright © 2020 Robert. All rights reserved.
//

import Foundation

struct ThemeCodable: Codable {
    let identifier: String
    let textColor: String
    let detailtTextColor: String
    let tintColor: String
    let switchTintColor: String
    let backgroundColor: String
    let tableViewColor: String
    let cellBackgroundColor: String
    let separatorColor: String
    let navigationBarColor: String
    let statusBarStyle: Int
    let indicatorStyle: Int
    let selectionStyleColor: String
    let accessoryTypeViewColor: String
    let switchBackgroundColor: String
    let keyboardAppearance: Int
    let blurEffect: Int
}
