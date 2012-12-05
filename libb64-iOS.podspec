Pod::Spec.new do |s|
  s.name         = "libb64-iOS"
  s.version      = "0.0.1"
  s.summary      = "A lightweight Objective-C wrapper for libb64."
  s.homepage     = "https://github.com/JeremyOT/libb64-iOS"

  s.license      = { :type => 'Open source' , :text => 'Open source'}
  s.author       = { "Jeremy Olmsted-Thompson" => "" }
  s.source       = { :git => "https://github.com/JeremyOT/libb64-iOS.git", :commit => "66fb90a0e03d82ca2762dfd0b50dbb8aa8d616b5" }
  
  s.platform     = :ios
  s.source_files = 'libb64-iOS/*.{h,m,c}'

  # If this Pod uses ARC, specify it like so.
  # s.requires_arc = true
end
