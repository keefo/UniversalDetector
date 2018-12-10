Pod::Spec.new do |s|
  s.name          = 'UniversalDetector-macOS'
  s.version       = '1.0.2'
  s.license       = { :type => 'Mozilla Public License', :file => 'LICENSE' }
  s.summary       =  'Wrapper of uchardet for Objective-C.'
  s.description   =  'UniversalDetector takes a sequence of bytes in an unknown character encoding without any additional information, and attempts to determine the encoding of the text.'
  s.homepage      = 'https://github.com/keefo/UniversalDetector'
  s.author        = { 'Xu Lian' => 'lianxu@me.com' }
  s.source        = { :git => 'https://github.com/keefo/UniversalDetector.git', 
    :tag => s.version.to_s,
    :submodules => true }

  s.source_files        = 'UniversalDetector/*.{h,m}', 'external/uchardet-0.0.5/src/*.{h,cpp}', 'external/uchardet-0.0.5/src/LangModels/*.{h,cpp}'
  s.public_header_files = 'UniversalDetector/*.h', 'external/uchardet-0.0.5/src/uchardet.h', 'external/uchardet-0.0.5/src/LangModels/uchardet.h'
  s.preserve_paths      = 'external/uchardet-0.0.5/src/*.{tab}'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'

  s.xcconfig = {
       'WARNING_CFLAGS' => '-Wno-shorten-64-to-32 -Wno-logical-op-parentheses'
  }

  #s.library             = 'stdc++'
  s.requires_arc = true
end
