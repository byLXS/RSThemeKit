import UIKit
import RSThemeKit


class ViewController: ThemeViewController {
    
    var tableView: ThemeTableView!
  
    var model: [[ThemeType]] = [[.system], [.light, .dark, .tintedNight, .custom(theme: ThemeModel(identifier: "123", textColor: #colorLiteral(red: 0.4010195732, green: 0.2691010535, blue: 0.7498635054, alpha: 1), detailtTextColor: #colorLiteral(red: 0.4010195732, green: 0.2691010535, blue: 0.7498635054, alpha: 1), tintColor: #colorLiteral(red: 0.4010195732, green: 0.2691010535, blue: 0.7498635054, alpha: 1), switchTintColor: #colorLiteral(red: 0.1882352941, green: 0.8196078431, blue: 0.3450980392, alpha: 1), backgroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), tableViewColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), cellBackgroundColor: #colorLiteral(red: 0.1095862761, green: 0.1098804548, blue: 0.1179131344, alpha: 1), separatorColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), navigationBarColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), statusBarStyle: .lightContent, indicatorStyle: .white, selectionStyleColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), accessoryTypeViewColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), switchBackgroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), keyboardAppearance: .dark))]]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = ThemeTableView(frame: self.view.frame, style: .grouped)
        tableView.addThemeObrserver()
        self.view.addSubview(tableView)
        self.tableView.register(UINib(nibName: "SwitchCell", bundle: nil), forCellReuseIdentifier: SwitchCell.identifier)
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 && ThemeManager.isSystemTheme {
            return 0
        }
        return model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ThemeTableCell()
        cell.addThemeObrserver()
        let type = model[indexPath.section][indexPath.row]
        
        if type.identifier() == ThemeManager.currentTheme.identifier {
            cell.accessoryType = .checkmark
            if !ThemeManager.isSystemTheme, ThemeManager.currentTheme.identifier == "system" {
                 ThemeManager.isSystemTheme = true
                 tableView.reloadData()
            }
        }
        
        switch type {
        case .system:
            guard let switchCell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifier, for: indexPath) as? SwitchCell else { return cell }
            switchCell.addTarget()
            switchCell.switchView.isOn = ThemeManager.isSystemTheme
            switchCell.delegate = self
            switchCell.titleLabel.text = "System"
            return switchCell
        case .light:
            cell.textLabel?.text = "Light Appearance"
        case .dark:
            cell.textLabel?.text = "Dark Appearance"
        case .tintedNight:
            cell.textLabel?.text = "Tinted Night Appearance"
        case .custom( _):
            cell.textLabel?.text = "Custom"
        }
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = model[indexPath.section][indexPath.row]
        switch type {
        case .system:
            break
        default:
            ThemeManager.setTheme(type: type)
        }
        tableView.reloadData()
    }
    
}

extension ViewController: SwitchDelegate {
    func changedValue(isOn: Bool) {
        ThemeManager.isSystemTheme = isOn
        tableView.reloadData()
    }
}

