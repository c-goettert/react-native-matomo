require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-matomo"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/BonifyByForteil/react-native-matomo"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/c-goettert/react-native-matomo.git", :tag => "podspec3" }
  s.source_files   = 'ios/MatomoTracker/**/*.{h,swift}'
  s.static_framework = true
  s.swift_version  = '4.2'
  s.dependency 'React'


  s.subspec "BNFMatomo" do |ss|
      ss.source_files = "ios/BNFMatomo/**/*.{h,m}"
  end

end
