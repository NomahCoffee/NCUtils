Pod::Spec.new do |spec|

  spec.name         = "NCUtils"
  spec.version      = "1.4.2"
  spec.summary      = "A utility framework for all Nomah Coffee iOS host applications."
  spec.description  = <<-DESC
This library is an all-in-one utility library for any Nomah Coffee iOS applications. 
It will help to aggregate similar work used across the board in one spot.
                   DESC
  spec.homepage     = "https://github.com/NomahCoffee/NCUtils"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Caleb Rudnicki" => "calebrudnicki@gmail.com" }
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  spec.source        = { :git => "https://github.com/NomahCoffee/NCUtils.git", :tag => "#{spec.version}" }
  spec.source_files  = "NCUtils/**/*.{h,m,swift}"
  
  spec.subspec 'Colors' do |ss|
    ss.source_files = 'NCUtils/Colors/**/*.swift'
    ss.dependency 'NCUtils/Extensions'
  end
  
  spec.subspec 'Fonts' do |ss|
    ss.source_files = 'NCUtils/Fonts/**/*.swift'
    ss.resources = 'NCUtils/Fonts/**/*.ttf'
    ss.dependency 'NCUtils/Extensions'
  end
  
  spec.subspec 'TextFields' do |ss|
    ss.source_files = 'NCUtils/TextFields/**/*.swift'
    ss.dependency 'NCUtils/Colors'
    ss.dependency 'NCUtils/Fonts'
  end
  
  spec.subspec 'Extensions' do |ss|
    ss.source_files = 'NCUtils/Extensions/**/*.swift'
  end

end
