Pod::Spec.new do |s|
  s.name             = 'PreviewInUIKit'
  s.version          = '1.0.0'
  s.summary          = 'A library for previewing UI components in Swift.'
  s.description      = '
                       PreviewUIKit is a Swift package that allows you to easily preview and test UI components.
                       '
  s.homepage         = 'https://github.com/Elechim01/PreviewUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michele Manniello' => 'morotto91@outlook.it' }
  s.source           = { :git => 'https://github.com/Elechim01/PreviewUIKit.git',:tag=>'1.0.0' }
  s.platform         = :ios, '13.0'
  s.swift_version    = '5.0'

  s.source_files = 'Sources/**/*.swift'	
end
