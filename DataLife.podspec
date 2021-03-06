#
#  Be sure to run `pod spec lint DataLife.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'DataLife'
  s.version          = '1.0.4'
  s.summary          = 'DataLife is an observable data storage class'
  s.homepage         = 'https://github.com/joaolfp/DataLife'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'João Lucas' => 'joaolucasfp2001@gmail.com' }
  s.social_media_url = 'https://twitter.com/lucasfp2001'
  s.requires_arc     = true
  s.frameworks       = 'UIKit'

  s.swift_versions   = ['5.0', '5.1']
  s.ios.deployment_target = '9.0'

  s.source           = { :git => 'https://github.com/joaolfp/DataLife.git', :tag => s.version.to_s }
  s.source_files     = 'Sources/DataLife/**/*'
end
