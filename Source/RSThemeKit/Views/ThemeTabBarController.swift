import UIKit

open class ThemeTabBarController: UITabBarController {
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addThemeObserver()
    }
    
    public func addThemeObserver() {
        ThemeManager.addThemeObserver(self, selector: #selector(changedTheme))
        changedTheme()
    }
   
    @objc func changedTheme() {
        decorator(theme: ThemeManager.currentTheme)
    }
    
    open func decorator(theme: ThemeModel) {
        tabBar.barTintColor = theme.backgroundColor
        tabBar.tintColor = theme.tintColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
