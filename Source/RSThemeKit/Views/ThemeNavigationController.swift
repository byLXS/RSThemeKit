import UIKit

open class ThemeNavigationController: UINavigationController {
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addThemeObserver()
    }
    
    public func addThemeObserver() {
        ThemeManager.addThemeObserver(self, selector: #selector(changedTheme))
        changedTheme()
    }

    override public var childForStatusBarHidden: UIViewController? {
        return self.topViewController
    }
    
    override public var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
    
    @objc func changedTheme() {
        decorator(theme: ThemeManager.currentTheme)
    }
    
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        decorator(theme: ThemeManager.currentTheme)
    }
    
    open func decorator(theme: ThemeModel) {
        navigationBar.shadowImage = theme.separatorColor.as1ptImage()
        navigationBar.tintColor = theme.tintColor
        navigationBar.barTintColor = theme.navigationBarColor
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: theme.textColor]
        if #available(iOS 11.0, *) {
            navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: theme.textColor]
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
