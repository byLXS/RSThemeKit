import UIKit

open class ThemeCollectionCell: UICollectionViewCell {
    
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
        backgroundColor = theme.cellBackgroundColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
