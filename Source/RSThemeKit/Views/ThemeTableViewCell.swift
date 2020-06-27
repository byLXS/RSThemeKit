import UIKit

open class ThemeTableCell: UITableViewCell {

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
        textLabel?.textColor = theme.textColor
        textLabel?.backgroundColor = .clear
        detailTextLabel?.textColor = theme.textColor
        let view = UIView(frame: frame)
        view.backgroundColor = theme.selectionStyleColor
        
        switch accessoryType {
        case .checkmark, .detailButton, .detailDisclosureButton:
            tintColor = theme.tintColor
        case .disclosureIndicator:
            let imageView = UIImageView(image: UIImage(named: "arrow_right_image.pdf"))
            imageView.tintColor = theme.accessoryTypeViewColor
            self.accessoryView = imageView
        case .none:
            break
        @unknown default:
            break
        }
        
        selectedBackgroundView = view
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
