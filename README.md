# RSThemeKit
Allows you to quickly and easily set a color theme for your app

[![Pod Version](https://img.shields.io/badge/Pod-1.0.3-6193DF.svg)](https://cocoapods.org/)
![Swift Version](https://img.shields.io/badge/iOS-8.0+-blue.svg) 
![Swift Version](https://img.shields.io/badge/Swift-4.2+-orange.svg)
![Plaform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)
![License MIT](https://img.shields.io/badge/License-MIT-lightgrey.svg) 

## Requirements

Swift `4.2` & `5.0`. Ready for use on iOS 8+

## Installation

### CocoaPods:

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate `RSThemeKit` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'RSThemeKit'
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate `RSThemeKit` into your project manually. Put `Source/RSThemeKit` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

### Helper files

```swift
import UIKit
import RSThemeKit

class TabBarController: ThemeTabBarController {
}

class NavigationController: ThemeNavigationController {
}

class ViewController: ThemeViewController {

    var tableView: ThemeTableView!
    var collectionView: ThemeCollectionView!
 
} 
```

and ThemeTableCell, ThemeCollectionCell

### Add your custom view:

```swift
class CustomView: UIView {
    
    func addThemeObrserver() {
        ThemeManager.addThemeObrserver(self, selector: #selector(changedTheme))
        changedTheme()
    }
    
    @objc func changedTheme() {
        decorator(theme: ThemeManager.currentTheme)
    }
    
    func decorator(theme: ThemeModel) {
        backgroundColor = theme.cellBackgroundColor
    }
} 

class ViewController: ThemeViewController {
    
    let customView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.addThemeObrserver()
    }
    
}
```

## Quick Start

inherit your UIViewController from ThemeViewController

```swift
import UIKit
import RSThemeKit

class ViewController: ThemeViewController {
}
```

Create a model for displaying themes.I'll have it as a tableView:

```swift
import UIKit
import RSThemeKit

class ViewController: ThemeViewController {

    var model: [[ThemeType]] = [[.system], [.light, .dark]]
 
}
```

Create a ThemeTableView:

```swift
import UIKit
import RSThemeKit

class ViewController: ThemeViewController {
    
    var tableView: ThemeTableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = ThemeTableView(frame: self.view.frame, style: .grouped)
        tableView.addThemeObrserver()
        self.view.addSubview(tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}
```

Сreating model for displaying the tableView: 

```swift
class ViewController: ThemeViewController {
  
    var model: [[ThemeType]] = [[.light, .dark]]
}
```

Add `addThemeObrserver` for ThemeTableCell

```swift
let cell = ThemeTableCell()
cell.addThemeObrserver()
```

```swift
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ThemeTableCell()
        cell.addThemeObrserver()
        let type = model[indexPath.section][indexPath.row]
        
        if type.identifier() == ThemeManager.currentTheme.identifier {
            cell.accessoryType = .checkmark
        }
        
        switch type {
        case .system:
            break
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
```
Setup Theme 
```swift
let type = model[indexPath.section][indexPath.row]
ThemeManager.setTheme(type: type)
```
