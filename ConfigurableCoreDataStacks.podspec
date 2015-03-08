

Pod::Spec.new do |s|
  s.name             = "ConfigurableCoreDataStacks"
  s.version          = "0.3.0"
  s.summary          = "Flexible, cusomtizable Core Data stacks."
  s.homepage         = "https://github.com/MartinJNash/ConfigurableCoreDataStacks"
  s.license          = 'MIT'
  s.social_media_url = 'https://twitter.com/MartinJNash'
  s.requires_arc = true

  s.author           = {
    "Martin Nash" => "hidden@hidden.com"
  }

  s.source           = {
    :git => "https://github.com/MartinJNash/ConfigurableCoreDataStacks.git",
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ConfigurableCoreDataStacks' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'CoreData'
end
