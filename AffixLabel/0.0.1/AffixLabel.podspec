Pod::Spec.new do |s|
  s.name         = 'AffixLabel'
  s.version      = '0.0.1'
  s.summary      = 'A label with prefix and suffix string written in swift'
  s.homepage     = 'https://github.com/baocang/AffixLabel'
  s.license      = 'MIT'
  s.author       = { 'Baocang Nie' => 'baocang.nie@icloud.com' }
  s.source       = { :git => 'https://github.com/baocang/AffixLabel.git', :tag => '0.0.1' }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'AffixLabel/*.swift'
  s.framework  = 'UIKit'
end
