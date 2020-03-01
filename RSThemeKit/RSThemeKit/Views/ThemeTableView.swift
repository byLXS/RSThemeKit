import UIKit

public class ThemeTableView: UITableView {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
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
        backgroundColor = theme.tableViewColor
        separatorColor = theme.separatorColor
        indicatorStyle = theme.indicatorStyle
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}