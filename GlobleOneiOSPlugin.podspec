

Pod::Spec.new do |s|
  s.name         = "GlobleOneIOSPlugin"
  s.version      = "0.0.2"
  s.summary      = "Check Touch ID , Face ID GlobleOneIOSPlugin."
  s.description  = "Check Touch ID , Face ID"
  s.homepage     = "https://github.com/Duong2233/GlobleOneiOSPlugin"
  s.license      = "MIT"
  s.author       = { "Duong Nguyen" => "duong.nh@sutrixsolution.com" }
  s.source       = { :git => "https://github.com/Duong2233/GlobleOneiOSPlugin.git", :tag => "#{s.version}" }
  s.source_files  = "GlobleOneIOSPlugin", "GlobleOneIOSPlugin/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end
