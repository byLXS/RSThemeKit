import UIKit

open class ThemeCollectionCell: UICollectionViewCell {
    
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
        backgroundColor = theme.cellBackgroundColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
