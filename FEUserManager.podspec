Pod::Spec.new do |s|
  s.name             = "FEUserManager"
  s.version          = "0.1.0"
  s.summary          = "方便的管理用户信息，尤其是在需要登录的界面"
  s.description      = <<-DESC
                       做的很多APP，首先需要验证用户账号。登录成功以后，下一次登录根据前一次的信息来判断，是登录还是跳转到首页。所以写了这个FEUserManager，可以方便的管理这种APP用户信息。
                       DESC
  s.homepage         = "https://github.com/wzf/FEUserManager"
  s.license          = 'MIT'
  s.author           = { "Jeff" => "feng4job@gmail.com" }
  s.source           = { :git => "https://github.com/wzf/FEUserManager.git", :tag => s.version.to_s }
  

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FEUserManager' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
end
