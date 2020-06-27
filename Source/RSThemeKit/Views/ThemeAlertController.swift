open class ThemeAlertController: UIAlertController {
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
        if let cancelBackgroundViewType = NSClassFromString("_UIAlertControlleriOSActionSheetCancelBackgroundView") as? UIView.Type {
            cancelBackgroundViewType.appearance().subviewsBackgroundColor = theme.cellBackgroundColor.withAlphaComponent(0.9)
        }
        guard theme.identifier != ThemeType.system.identifier() else { return }
        switch preferredStyle {
        case .alert:
            if let subview = view.subviews.first, let alertContentView = subview.subviews.first {
                if let alertContentView1 = subview.subviews.last {
                    alertContentView.layer.cornerRadius = 10
                    alertContentView.alpha = 1
                    alertContentView.layer.borderWidth = 1
                    alertContentView.layer.borderColor = theme.cellBackgroundColor.withAlphaComponent(0.9).cgColor
                    
                    
                    setBackgroundColor(color: theme.separatorColor.withAlphaComponent(0.4))
                    alertContentView1.backgroundColor = theme.cellBackgroundColor
                    if let contentView1 = alertContentView1.subviews.first?.subviews.first {
                        contentView1.backgroundColor = theme.cellBackgroundColor
                    }
                    if let contentView2 = alertContentView1.subviews.first?.subviews.last {
                        contentView2.backgroundColor = theme.cellBackgroundColor
                    }
                    alertContentView1.layer.cornerRadius = 10
                    alertContentView1.alpha = 1
                    alertContentView1.layer.borderWidth = 1
                    alertContentView1.layer.borderColor = theme.cellBackgroundColor.cgColor
                }
                setBackgroundColor(color: .clear)
                if let contentView1 = alertContentView.subviews.first?.subviews.first {
                    contentView1.backgroundColor = theme.cellBackgroundColor
                    if #available(iOS 8.2, *) {
                        setTitlet(font: UIFont.systemFont(ofSize: 17, weight: .semibold), color: theme.textColor)
                    } else {
                        setTitlet(font: UIFont.systemFont(ofSize: 17), color: theme.textColor)
                    }
                    if #available(iOS 8.2, *) {
                        setMessage(font: UIFont.systemFont(ofSize: 13, weight: .regular), color: theme.textColor)
                    } else {
                        setTitlet(font: UIFont.systemFont(ofSize: 13), color: theme.textColor)
                    }
                }
                
                for subView in UIView.allSubviews(of: view) {
                    if let effectView = subView as? UIVisualEffectView {
                        if effectView.effect is UIVibrancyEffect {
                            if #available(iOS 13.0, *) {
                                effectView.effect = UIVibrancyEffect(blurEffect: theme.blurEffect, style: .secondaryLabel)
                            }
                            break
                        }
                    }
                }
            }
        case .actionSheet:
            if let subview = view.subviews.first, let alertContentView = subview.subviews.first {
                alertContentView.backgroundColor = theme.cellBackgroundColor.withAlphaComponent(0.9)
                setBackgroundColor(color: theme.separatorColor.withAlphaComponent(0.4))
                alertContentView.backgroundColor = theme.cellBackgroundColor.withAlphaComponent(0.9)
                alertContentView.layer.cornerRadius = 10
                alertContentView.alpha = 1
                alertContentView.layer.borderWidth = 1
                alertContentView.layer.borderColor = theme.cellBackgroundColor.withAlphaComponent(0.9).cgColor
                if let contentView1 = alertContentView.subviews.first?.subviews.first {
                    contentView1.backgroundColor = theme.cellBackgroundColor.withAlphaComponent(0.9)
                    if #available(iOS 8.2, *) {
                        setTitlet(font: UIFont.systemFont(ofSize: 13, weight: .semibold), color: theme.textColor)
                    } else {
                        setTitlet(font: UIFont.systemFont(ofSize: 13), color: theme.textColor)
                    }
                    if #available(iOS 8.2, *) {
                        setMessage(font: UIFont.systemFont(ofSize: 13, weight: .regular), color: theme.textColor)
                    } else {
                       setTitlet(font: UIFont.systemFont(ofSize: 13), color: theme.textColor)
                    }
                }
                if let contentView2 = alertContentView.subviews.first?.subviews.last {
                    contentView2.backgroundColor = theme.cellBackgroundColor.withAlphaComponent(0.9)
                }
                
                for subView in UIView.allSubviews(of: view) {
                    if let effectView = subView as? UIVisualEffectView {
                        if effectView.effect is UIVibrancyEffect {
                            if #available(iOS 13.0, *) {
                                effectView.effect = UIVibrancyEffect(blurEffect: theme.blurEffect, style: .secondaryLabel)
                            }
                            break
                        }
                    }
                }
            }
        @unknown default:
            break
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setBackgroundColor(color: UIColor) {
        if let bgView = self.view.subviews.first, let groupView = bgView.subviews.first, let contentView = groupView.subviews.first {
            contentView.backgroundColor = color
        }
    }
    
    func setTitlet(font: UIFont?, color: UIColor?) {
        guard let title = self.title else { return }
        let attributeString = NSMutableAttributedString(string: title)//1
        if let titleFont = font {
            attributeString.addAttributes([NSAttributedString.Key.font : titleFont],//2
                range: NSMakeRange(0, title.utf8.count))
        }
        
        if let titleColor = color {
            attributeString.addAttributes([NSAttributedString.Key.foregroundColor : titleColor],//3
                range: NSMakeRange(0, title.utf8.count))
        }
        self.setValue(attributeString, forKey: "attributedTitle")//4
    }
    
    func setMessage(font: UIFont?, color: UIColor?) {
        guard let message = self.message else { return }
        let attributeString = NSMutableAttributedString(string: message)
        if let messageFont = font {
            attributeString.addAttributes([NSAttributedString.Key.font : messageFont],
                                          range: NSMakeRange(0, message.utf8.count))
        }
        
        if let messageColorColor = color {
            attributeString.addAttributes([NSAttributedString.Key.foregroundColor : messageColorColor],
                                          range: NSMakeRange(0, message.utf8.count))
        }
        self.setValue(attributeString, forKey: "attributedMessage")
    }
}

fileprivate extension UIView {
    private struct AssociatedKey {
        static var subviewsBackgroundColor = "subviewsBackgroundColor"
    }
    
    @objc dynamic var subviewsBackgroundColor: UIColor? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKey.subviewsBackgroundColor) as? UIColor
        }
        
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKey.subviewsBackgroundColor,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            subviews.forEach { $0.backgroundColor = newValue }
        }
    }
}


extension UIView {
    class func allSubviews<T : UIView>(of view: UIView) -> [T] {
        var subviews = [T]()
        
        for subview in view.subviews {
            subviews += allSubviews(of: subview) as [T]
            
            if let subview = subview as? T {
                subviews.append(subview)
            }
        }
        
        return subviews
    }
}

