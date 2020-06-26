import Foundation
import UIKit
import RSThemeKit

protocol SwitchDelegate: class {
    func changedValue(isOn: Bool)
}

class SwitchCell: ThemeTableCell {
    
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!

    static let identifier = "SwitchCell"
    
    weak var delegate: SwitchDelegate?
    
    override func decorator(theme: ThemeModel) {
        super.decorator(theme: theme)
        switchView.tintColor = theme.switchBackgroundColor
        switchView.layer.cornerRadius = 16
        switchView.backgroundColor = theme.switchBackgroundColor
        switchView.onTintColor = theme.switchTintColor
        titleLabel.textColor = theme.textColor
    }
    
    func addTarget() {
        switchView.addTarget(self, action: #selector(changedSwitch), for: .valueChanged)
    }
    
    @objc func changedSwitch() {
        delegate?.changedValue(isOn: switchView.isOn)
    }
    
}
