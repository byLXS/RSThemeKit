import UIKit

open class ThemeNavigationController: UINavigationController {
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addThemeObrserver()
    }
    
    public func addThemeObrserver() {
        ThemeManager.addThemeObrserver(self, selector: #selector(changedTheme))
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
    
    open func decorator(theme: ThemeModel) {
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
