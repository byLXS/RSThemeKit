import UIKit

open class ThemeCollectionView: UICollectionView {
    
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
    
    open func decorator(theme: ThemeModel) {
        backgroundColor = theme.tableViewColor
        indicatorStyle = theme.indicatorStyle
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
