

Pod::Spec.new do |s|
  s.name             = "ConfigurableCoreDataStacks"
  s.version          = "0.1.0"
  s.summary          = "Flexible, cusomtizable Core Data stacks."
  s.homepage         = "https://github.com/MartinJNash/ConfigurableCoreDataStacks"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Martin Nash" => "hidden@hidden.com" }
  s.source           = { :git => "https://github.com/MartinJNash/ConfigurableCoreDataStacks.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MartinJNash'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ConfigurableCoreDataStacks' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
