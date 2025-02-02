Pod::Spec.new do |s|
  s.name             = "DeepPanel"
  s.version          = "0.0.5"
  s.summary          = "Panels' segmentaiton made easy with artificial intelligence"
  s.license          = "Apache License, Version 2.0"
  s.homepage         = "https://github.com/pedrovgs/DeepPaneliOS"
  s.author           = "Pedro Vicente Gómez Sánchez"
  s.social_media_url = "https://twitter.com/pedro_g_s"
  s.source           = { :git => "https://github.com/pedrovgs/DeepPaneliOS.git", :tag => "#{s.version}" }
  s.platform = :ios, '9.0'
  s.framework = "Foundation"
  s.dependency "TensorFlowLiteSwift/Metal"
  s.static_framework = true
  s.swift_versions = "5.0"
  s.requires_arc = true
  s.public_header_files = 'DeepPanel/**/*.{h}'
  s.source_files = "DeepPanel/**/*.{h,m,mm,swift}", "Native/**/*{hpp,cpp}"
  s.resources = "DeepPanel/**/*.{tflite}"
  s.libraries = "c++"
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/Native" }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
