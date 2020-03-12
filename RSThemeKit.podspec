Pod::Spec.new do |s|

  s.name          = "RSThemeKit"
  s.version       = "1.0.0"
  s.summary       = "Easy implementation of light, dark, and custom themes starting with iOS 8+"
  s.homepage      = "https://github.com/byLXS/RSThemeKit"
  s.source        = { :git => "https://github.com/byLXS/RSThemeKit.git", :tag => s.version }
  s.license       = { :type => 'MIT', :text => <<-LICENSE
                   MIT License

Copyright (c) 2018 Robert Shaginyan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
                 LICENSE
               }
  
  s.author        = { "Robert Shaginyan" => "shaginyan.r@gmail.com" }
  
  s.platform      = :ios, '8.0'
  s.ios.framework = 'UIKit'
  s.swift_version = ['4.2', '5.0']
  s.ios.deployment_target = "8.0"

  s.source_files  = "Source/RSThemeKit/**/*.swift"

end

