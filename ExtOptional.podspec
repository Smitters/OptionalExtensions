Pod::Spec.new do |s|
  s.name         = "ExtOptional"
  s.version      = "1.0"
  s.summary      = "Some extensions for Optional type"
  s.description  = "Handful of functions, operators and properties that will help you work with Optional types."
  s.homepage     = "https://github.com/Smitters/OptionalExtensions.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Dmitry Smetankin" => "smetankin93@gmail.com" }
  s.social_media_url   = "https://twitter.com/smetankin93"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/Smitters/OptionalExtensions.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
