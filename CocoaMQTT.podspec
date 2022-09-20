Pod::Spec.new do |s|
  s.name        = "CocoaMQTT"
  s.version     = "2.1.0"
  s.summary     = "MQTT v3.1.1 client library for iOS and OS X written with Swift 5"
  s.homepage    = "https://github.com/txiosdev/CocoaMQTT"
  s.license     = { :type => "MIT" }
  s.authors     = { "Nicola De Bei" => "nicola.de_bei@texa.com" }

  s.swift_version = "5.0"
  s.requires_arc = true
  s.osx.deployment_target = "10.12"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  # s.watchos.deployment_target = "2.0"
  s.source   = { :git => "https://github.com/txiosdev/CocoaMQTT.git", :tag => "2.1.0"}
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = "Source/**/*"
    ss.exclude_files = "Source/CocoaMQTTWebSocket.swift"
  end
  
  s.subspec 'WebSockets' do |ss|
    ss.dependency "CocoaMQTT/Core"
    ss.dependency "Starscream", "~> 3.1.1"
    ss.source_files = "Source/CocoaMQTTWebSocket.swift"
  end
end
