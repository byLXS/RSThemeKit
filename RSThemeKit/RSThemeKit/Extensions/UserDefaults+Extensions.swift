//
//  UserDefaults+Extensions.swift
//  ExampleRSThemeKit
//
//  Created by Robert on 01.03.2020.
//  Copyright © 2020 Robert. All rights reserved.
//

import Foundation

extension UserDefaults {
    func saveCustomTheme(_ object: ThemeCodable, forKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: key)
        }
    }
    
    func customThemeForKey(key: String) -> ThemeModel? {
        if let savedPerson = UserDefaults.standard.object(forKey: key) as? Data {
            let decoder = JSONDecoder()
            if let loadedPerson = try? decoder.decode(ThemeCodable.self, from: savedPerson) {
                return loadedPerson.getThemeModel()
            }
        }
        
        return nil
    }

}
