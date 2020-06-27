# RSThemeKit
Allows you to quickly and easily set a color theme for your app

<a href="https://github.com/byLXS/RSThemeKit/blob/master/Preview.gif" target="_blank"><img align="left" src="https://github.com/byLXS/RSThemeKit/blob/master/Preview.gif" width="200"/></a>

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

and ThemeTableCell, ThemeCollectionCell, ThemeAlertController

### Add your custom view:

```swift
class CustomView: UIView {
    
    func addThemeObserver() {
        ThemeManager.addThemeObserver(self, selector: #selector(changedTheme))
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
        customView.addThemeObserver()
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
        tableView.addThemeObserver()
        self.view.addSubview(tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}
```

Add `addThemeObserver` for ThemeTableCell

```swift
let cell = ThemeTableCell()
cell.addThemeObserver()
```

Setup Theme 
```swift
ThemeManager.setTheme(type: .dark)
```
