import Foundation
import UIKit

public enum ThemeType {
    case light
    case dark
    case tintedNight
    case system
    case custom(theme: ThemeModel?)
    
    public init(_ identifier: String) {
        switch identifier {
        case "light":
            self = .light
        case "dark":
            self = .dark
        case "tintedNight":
            self = .tintedNight
        case "system":
            self = .system
        case "custom":
            var theme = ThemeManager.customTheme
            theme?.identifier = "custom"
            self = .custom(theme: theme)
        default:
            self = .system
        }
    }
    
    
    
    public func identifier() -> String {
        switch self {
        case .light:
            return "light"
        case .dark:
            return "dark"
        case .tintedNight:
            return "tintedNight"
        case .system:
            return "system"
        case .custom:
            return "custom"
        }
    }
    
    public func getThemeModel() -> ThemeModel {
        switch self {
        case .system:
            return getSystemTheme()
        case .light:
            return getLightTheme()
        case .dark:
            return getDarkTheme()
        case .tintedNight:
            return getTintedNightTheme()
        case .custom(let theme):
            return theme ?? getLightTheme()
        }
    }
    
    private func getLightTheme() -> ThemeModel {
        let theme = ThemeModel(identifier: identifier(), textColor: UIColor.darkColor, detailtTextColor: UIColor.gray2LightColor, tintColor: UIColor.blueLightColor, switchTintColor: UIColor.greenLightColor, backgroundColor: UIColor.whiteColor, tableViewColor: UIColor.gray6LightColor, cellBackgroundColor: UIColor.whiteColor, separatorColor: UIColor.gray3LightColor, navigationBarColor: UIColor.gray6LightColor, statusBarStyle: .default, indicatorStyle: .black, selectionStyleColor: UIColor.gray5LightTheme, accessoryTypeViewColor: UIColor.gray2LightColor, switchBackgroundColor: UIColor.gray4LightColor, keyboardAppearance: .light, blurEffect: .init(style: .light))
        return theme
    }
    
    private func getDarkTheme() -> ThemeModel {
        let theme = ThemeModel(identifier: identifier(), textColor: UIColor.whiteColor, detailtTextColor: UIColor.grayDarkColor, tintColor: UIColor.blueDarkColor, switchTintColor: UIColor.greenDarkColor, backgroundColor: UIColor.darkColor, tableViewColor: UIColor.darkColor, cellBackgroundColor: UIColor.gray6DarkColor, separatorColor: UIColor.graySeparatorDarkColor, navigationBarColor: UIColor.darkColor, statusBarStyle: .lightContent, indicatorStyle: .white, selectionStyleColor: UIColor.gray5DarkColor, accessoryTypeViewColor: UIColor.gray2DarkColor, switchBackgroundColor: UIColor.gray4DarkColor, keyboardAppearance: .dark, blurEffect: .init(style: .dark))
        return theme
    }
    
    private func getTintedNightTheme() -> ThemeModel {
        let theme = ThemeModel(identifier: identifier(), textColor: UIColor.whiteColor, detailtTextColor: UIColor.gray2LightColor, tintColor: UIColor.blueTintedNightColor, switchTintColor: UIColor.blueTintedNightColor, backgroundColor: UIColor.blue3TintedNightColor, tableViewColor: UIColor.blue3TintedNightColor, cellBackgroundColor: UIColor.blue2TintedNightColor, separatorColor: UIColor.blue3TintedNightColor, navigationBarColor: UIColor.blue2TintedNightColor, statusBarStyle: .lightContent, indicatorStyle: .black, selectionStyleColor: UIColor.blue5TintedNightColor, accessoryTypeViewColor: UIColor.gray2LightColor, switchBackgroundColor: UIColor.gray3DarkColor, keyboardAppearance: .light, blurEffect: .init(style: .dark))
        return theme
    }
    
    private func getSystemTheme() -> ThemeModel {
        var blurEffect: UIBlurEffect = .init(style: .light)
        if #available(iOS 13, *) {
            blurEffect = .init(style: UIScreen.main.traitCollection.userInterfaceStyle == .dark ? .systemMaterialDark : .systemMaterialLight)
        }
        let theme = ThemeModel(identifier: identifier(), textColor: UIColor.systemTextColor, detailtTextColor: UIColor.systemDetailTextColor, tintColor: UIColor.systemTintColor, switchTintColor: UIColor.systemSwitchTintColor, backgroundColor: UIColor.systemBackgroundColor, tableViewColor: UIColor.systemTableViewColor, cellBackgroundColor: UIColor.systemCellBackgroundColor, separatorColor: UIColor.systemSeparatorColor, navigationBarColor: UIColor.systemNavigationBarColor, statusBarStyle: .default, indicatorStyle: .black, selectionStyleColor: UIColor.systemSelectionStyleColor, accessoryTypeViewColor: UIColor.systemAccessoryTypeViewColor, switchBackgroundColor: UIColor.systemSwitchBackgroundColor, keyboardAppearance: .light, blurEffect: blurEffect)
        return theme
    }
}
