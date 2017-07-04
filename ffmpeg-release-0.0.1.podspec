Pod::Spec.new do |s|
  s.name         = "ffmpeg-release"
  s.version      = "0.0.1"
  s.summary      = "ffmpeg 3.3 release."
  s.homepage     = "https://github.com/linzhiman/ffmpeg-release"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "linzhiman" => "154298785@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/linzhiman/ffmpeg-release.git", :tag => "#{s.version}" }
  s.source_files = 'FFmpeg-iOS/include/**/*.h'
  s.public_header_files = 'FFmpeg-iOS/include/**/*.h'
  s.preserve_paths = 'FFmpeg-iOS/lib/*.a'
  s.libraries = 'avcodec','avdevice','avfilter','avformat','avutil','swresample','swscale'
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ffmpeg-release/FFmpeg-iOS/lib/"',
    'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/ffmpeg-release/FFmpeg-iOS/include"'
}
end
