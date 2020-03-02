import UIKit

open class ThemeViewController: UIViewController {
    
    var current = UIStatusBarStyle.default
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13, *) {
            if ThemeManager.isDarkAppearance {
                if ThemeType.light.identifier() == ThemeManager.currentTheme.identifier {
                    current = .darkContent
                }
                return ThemeManager.isSystemTheme ? .lightContent : current
            }
            return ThemeManager.isSystemTheme ? .darkContent : current
        }
        return current
    }
    
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
        view.backgroundColor = theme.backgroundColor
        current = theme.statusBarStyle
        setNeedsStatusBarAppearanceUpdate()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
