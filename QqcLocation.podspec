Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "QqcLocation"
  s.version      = "1.0.100"
  s.summary      = "QqcLocation"
  s.homepage     = "https://github.com/xukiki/QqcLocation"
  s.source       = { :git => "https://github.com/xukiki/QqcLocation.git", :tag => "#{s.version}" }
  
  s.source_files  = ["QqcLocation/*.{h,m}"]

  s.subspec 'CCLocation' do |ss|
    ss.source_files = 'QqcLocation/CCLocation/*.{h,m}'
  end

  s.dependency "QqcUtility"
  s.dependency "QqcUtilityUI"

end
