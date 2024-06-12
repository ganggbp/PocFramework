Pod::Spec.new do |spec|
  spec.name         = "PocFramework"
  spec.version      = "0.0.2"
  spec.summary      = "This is a proof of concept framework for learning."
  spec.description  = <<-DESC
                    PocFramework is a proof of concept framework designed for educational purposes.
                    It includes various examples and best practices for developing CocoaPods libraries.
                    DESC
  spec.homepage     = "https://github.com/ganggbp/PocFramework/tree/main/PocFramework"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Burit Boonkorn" => "burit_bk@hotmail.com" }
  spec.platform     = :ios, "17.2"
  spec.source       = { :git => "https://github.com/ganggbp/PocFramework.git", :tag => "#{spec.version}" }
  spec.source_files = "PocFramework/*.{swift,h}"
  spec.swift_version = "5.0"
end
