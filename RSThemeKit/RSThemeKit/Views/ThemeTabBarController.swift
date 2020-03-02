import UIKit

open class ThemeTabBarController: UITabBarController {
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addThemeObrserver()
    }
    
    public func addThemeObrserver() {
        ThemeManager.addThemeObrserver(self, selector: #selector(changedTheme))
        changedTheme()
    }
   
    @objc func changedTheme() {
        decorator(theme: ThemeManager.currentTheme)
    }
    
    public func decorator(theme: ThemeModel) {
        tabBar.barTintColor = theme.backgroundColor
        tabBar.tintColor = theme.tintColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
