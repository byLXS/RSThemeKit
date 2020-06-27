import UIKit

open class ThemeTableView: UITableView {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
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
        backgroundColor = theme.tableViewColor
        separatorColor = theme.separatorColor
        indicatorStyle = theme.indicatorStyle
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
