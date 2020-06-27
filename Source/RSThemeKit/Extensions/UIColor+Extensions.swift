import UIKit

extension UIColor {
    
    static var systemTextColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                } else {
                    return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                }
            }
        } else {
            return darkColor
        }
    }
    
    static var systemTintColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return blueDarkColor
                } else {
                    return blueLightColor
                }
            }
        } else {
            return blueLightColor
        }
    }
    
    static var systemBackgroundColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return darkColor
                } else {
                    return whiteColor
                }
            }
        } else {
            return whiteColor
        }
    }
    
    static var systemAccessoryTypeViewColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return gray2DarkColor
                } else {
                    return whiteColor
                }
            }
        } else {
            return whiteColor
        }
    }
    
    static var systemCellBackgroundColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return gray6DarkColor
                } else {
                    return grayCustomLightColor
                }
            }
        } else {
            return grayCustomLightColor
        }
    }
    
    static var systemDetailTextColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return grayDarkColor
                } else {
                    return whiteColor
                }
            }
        } else {
            return whiteColor
        }
    }
    
    static var systemNavigationBarColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return darkColor
                } else {
                    return gray6LightColor
                }
            }
        } else {
            return gray6LightColor
        }
    }
    
    static var systemSelectionStyleColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return gray5DarkColor
                } else {
                    return gray5LightTheme
                }
            }
        } else {
            return gray5LightTheme
        }
    }
    
    static var systemSwitchBackgroundColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return gray4DarkColor
                } else {
                    return gray4LightColor
                }
            }
        } else {
            return gray4LightColor
        }
    }
    
    static var systemSwitchTintColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return greenDarkColor
                } else {
                    return greenLightColor
                }
            }
        } else {
            return greenLightColor
        }
    }
    
    static var systemTableViewColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return darkColor
                } else {
                    return gray6LightColor
                }
            }
        } else {
            return gray6LightColor
        }
    }
    
    static var systemSeparatorColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    return graySeparatorDarkColor
                } else {
                    return gray3LightColor
                }
            }
        } else {
            return gray3LightColor
        }

    }
    
    static var whiteColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
    }
    
    static var darkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    }
    
    static var graySeparatorDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.168627451, green: 0.168627451, blue: 0.1764705882, alpha: 1))
    }
    
    static var grayLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.5563083291, green: 0.5570628047, blue: 0.5771192312, alpha: 1))
    }
    
    static var grayDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.5568627451, green: 0.5568627451, blue: 0.5764705882, alpha: 1))
    }
    
    static var gray2LightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    static var gray2DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.3803921569, green: 0.3764705882, blue: 0.3960784314, alpha: 1))
    }
    
    static var gray3DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.2823529412, green: 0.2823529412, blue: 0.2901960784, alpha: 1))
    }
    
    static var gray3LightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.7803921569, green: 0.7803921569, blue: 0.8, alpha: 1))
    }
    
    static var gray4DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2352941176, alpha: 1))
    }
    
    static var gray4LightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.8196078431, green: 0.8196078431, blue: 0.8392156863, alpha: 1))
    }
    
    static var gray5LightTheme: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.9176470588, alpha: 1))
    }
    
    static var gray5DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1725490196, green: 0.1725490196, blue: 0.1803921569, alpha: 1))
    }
    
    static var gray6LightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1))
    }
    
    static var gray6DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1098039216, green: 0.1098039216, blue: 0.1176470588, alpha: 1))
    }
    
    static var grayCustomLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1))
    }
    
    static var blueLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
    }
    
    static var blueDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    }
    
    static var blueTintedNightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1764705882, green: 0.6470588235, blue: 1, alpha: 1))
    }
    
    static var blue2TintedNightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1294117647, green: 0.1843137255, blue: 0.2509803922, alpha: 1))
    }
    
    static var blue3TintedNightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.09411764706, green: 0.137254902, blue: 0.1803921569, alpha: 1))
    }
    
    static var blue4TintedNightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.2196078431, green: 0.2745098039, blue: 0.3411764706, alpha: 1))
    }
    
    static var blue5TintedNightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.05882352941, green: 0.0862745098, blue: 0.1137254902, alpha: 1))
    }
    
    static var redLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1))
    }
    
    static var redDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 1, green: 0.2705882353, blue: 0.2274509804, alpha: 1))
    }
    
    static var greenLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.2039215686, green: 0.7803921569, blue: 0.3490196078, alpha: 1))
    }
    
    static var greenDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1882352941, green: 0.8196078431, blue: 0.3450980392, alpha: 1))
    }
}


extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}

extension UIColor {
    public func as1ptImage() -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        setFill()
        UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
        UIGraphicsEndImageContext()
        return image
    }
}
