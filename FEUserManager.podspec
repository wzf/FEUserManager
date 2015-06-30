Pod::Spec.new do |s|
  s.name             = "FEUserManager"
  s.version          = "0.1.0"
  s.summary          = "A short description of FEUserManager."
  s.description      = <<-DESC
                       An optional longer description of FEUserManager

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
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
