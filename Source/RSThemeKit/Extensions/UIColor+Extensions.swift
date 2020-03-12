import UIKit

let RSBundle = Bundle(identifier: "rs.RSThemeKit")!

extension UIColor {
    
    static var systemTextColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "textColor", in: RSBundle, compatibleWith: nil) ?? darkColor
        }
        
        return darkColor
    }
    
    static var systemTintColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "tintColor", in: RSBundle, compatibleWith: nil) ?? blueLightColor
        }
        
        return blueLightColor
    }
    
    static var systemBackgroundColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "backgroundColor", in: RSBundle, compatibleWith: nil) ?? whiteColor
        }
        
        return whiteColor
    }
    
    static var systemAccessoryTypeViewColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "accessoryTypeViewColor", in: RSBundle, compatibleWith: nil) ?? gray2LightColor
        }
        
         return gray2LightColor
    }
    
    static var systemCellBackgroundColor: UIColor {
        if #available(iOS 13.0, *) {
            
            return UIColor(named: "cellBackgroundColor", in: RSBundle, compatibleWith: nil) ?? gray6LightColor
        }
        
        return gray6LightColor
    }
    static var systemDetailtTextColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "detailtTextColor", in: RSBundle, compatibleWith: nil) ?? gray2LightColor
        }
        
        return gray2LightColor
    }
    static var systemNavigationBarColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "navigationBarColor", in: RSBundle, compatibleWith: nil) ?? gray6NavigationLightColor
        }
        
        return gray6NavigationLightColor
    }
    
    static var systemSelectionStyleColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "selectionStyleColor", in: RSBundle, compatibleWith: nil) ?? gray5LightTheme
        }
        
        return gray5LightTheme
    }
    
    static var systemSwitchBackgroundColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "switchBackgroundColor", in: RSBundle, compatibleWith: nil) ?? gray4LightColor
        }
        
        return gray4LightColor
    }
    
    static var systemSwitchTintColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "switchTintColor", in: RSBundle, compatibleWith: nil) ?? greenLightColor
        }
        
        return greenLightColor
    }
    
    static var systemTableViewColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "tableViewColor", in: RSBundle, compatibleWith: nil) ?? gray6NavigationLightColor
        }
        
        return gray6NavigationLightColor
    }
    
    static var systemSeparatorColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(named: "separatorColor", in: RSBundle, compatibleWith: nil) ?? gray3LightColor
        }
        
        return gray3LightColor
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
    
    static var gray6NavigationLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1))
    }
    
    static var grayLightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.5563083291, green: 0.5570628047, blue: 0.5771192312, alpha: 1))
    }
    
    static var gray2LightColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    static var gray2DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.3803921569, green: 0.3764705882, blue: 0.3960784314, alpha: 1))
    }
    
    static var grayDarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.5490196078, green: 0.5490196078, blue: 0.568627451, alpha: 1))
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
        return UIColor(cgColor: #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1))
    }
    
    static var gray6DarkColor: UIColor {
        return UIColor(cgColor: #colorLiteral(red: 0.1095862761, green: 0.1098804548, blue: 0.1179131344, alpha: 1))
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
