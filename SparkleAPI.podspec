Pod::Spec.new do |s|
  s.name = 'SparkleAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.0.1'
  s.source = { :git => "https://github.com/ohayoukenchan/sparkle-api-ios.git"}
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/ohayoukenchan/sparkle-api-ios'
  s.summary = 'API for sparkle-ios'
  s.source_files = 'SparkleAPI/Classes/**/*.swift'
  s.dependency 'RxSwift'
  s.dependency 'Alamofire'
end
