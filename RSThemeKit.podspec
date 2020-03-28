Pod::Spec.new do |s|

  s.name          = "RSThemeKit"
  s.version       = "1.0.3"
  s.summary       = "Easy implementation of light, dark, and custom themes starting with iOS 8+"
  s.homepage      = "https://github.com/byLXS/RSThemeKit"
  s.source        = { :git => "https://github.com/byLXS/RSThemeKit.git", :tag => s.version }
  s.license       = { :type => "MIT", :file => "LICENSE" }
  
  s.author        = { "Robert Shaginyan" => "shaginyan.r@gmail.com" }
  
  s.platform      = :ios
  s.ios.framework = 'UIKit'
  s.swift_version = ['4.2', '5.0']
  s.ios.deployment_target = "8.0"

  s.source_files  = "Source/RSThemeKit/**/*.swift"

end

