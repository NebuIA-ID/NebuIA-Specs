Pod::Spec.new do |s|
  s.name          = "NebuIA"
  s.version       = "0.0.79"
  s.summary       = "iOS SDK for NebuIA"
  s.description   = "iOS SDK for NebuIA SDK"
  s.homepage      = "git@github.com:NebuIA-ID/nebuia_native_ios.git"
  s.license       = "MIT"
  s.author        = "xellDart"
  s.platform      = :ios, "13.0"
  s.swift_version = "5.4.1"
  s.source        = {
    :git => "https://github.com/dist-bit/nebuia_native_ios.git",
    :tag => "#{s.version}"
  }
  s.vendored_frameworks = 'ncnn.framework', 'opencv2.framework', 'openmp.framework', 'libc++.tbd'
  s.source_files        = "NebuIA/**/*.{h,m,mm,swift}"
  s.resources = "Assets/*"
  s.public_header_files = "NebuIA/**/*.h"
  s.dependency 'Cartography', '~> 3.0'
  s.dependency 'NicoProgress'
  s.info_plist = { 'CFBundleIdentifier' => 'com.distbit.NebuIA' }
  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
  s.static_framework = true
  s.libraries             = 'stdc++'
end