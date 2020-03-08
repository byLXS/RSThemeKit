import UIKit

open class ThemeTableCell: UITableViewCell {

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
        textLabel?.textColor = theme.textColor
        textLabel?.backgroundColor = .clear
        detailTextLabel?.textColor = theme.textColor
        let view = UIView(frame: frame)
        view.backgroundColor = theme.selectionStyleColor
        
        switch accessoryType {
        case .checkmark, .detailButton, .detailDisclosureButton:
            tintColor = theme.tintColor
        case .disclosureIndicator:
            let imageView = UIImageView(image: UIImage(named: "arrow_right_image", in: RSBundle, compatibleWith: nil))
            imageView.tintColor = theme.accessoryTypeViewColor
            self.accessoryView = imageView
        case .none:
            break
        }
        
        selectedBackgroundView = view
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
