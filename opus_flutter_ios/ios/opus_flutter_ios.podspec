Pod::Spec.new do |s|
  s.name                  = 'opus_flutter_ios'
  s.version               = '1.4.0'
  s.summary               = 'A totally open, royalty-free, highly versatile audio codec.'
  s.homepage              = 'https://github.com/Phonebooth/OpusKit'
  s.author                = 'Trey Ethridge'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.source                = {
    :http => 'https://github.com/Phonebooth/OpusKit/releases/download/' + s.version.to_s + '/OpusKit.xcframework.zip'
  }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.swift_version         = '5.0'
  s.ios.deployment_target = '14.0'
  s.vendored_frameworks   = 'OpusKit.xcframework'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
