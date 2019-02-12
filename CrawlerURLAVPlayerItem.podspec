Pod::Spec.new do |spec|
  spec.name         = "CrawlerURLAVPlayerItem"
  spec.version      = "1.0.1"
  spec.summary      = "An URL Crawler fetch the audio or video playing URL in UIWebView. Do not support WKWebKit or SFSafariViewController."

  spec.description  = <<-DESC
                        An URL Crawler fetch the audio or video playing URL in UIWebView. Do not support WKWebKit or SFSafariViewController. Need to be improve.
                   DESC

  spec.homepage     = "https://github.com/kidyoungx/CrawlerURLAVPlayerItem"

  spec.license      = "MPL-2.0"

  spec.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  spec.platform     = :ios, "5.0"

  spec.source       = { :git => "https://github.com/kidyoungx/CrawlerURLAVPlayerItem.git", :tag => "#{spec.version}" }

  spec.source_files  = "CrawlerURLAVPlayerItem", "CrawlerURLAVPlayerItem/**/*.{h,m}"
  spec.exclude_files = "SampleCrawlerURLAVPlayerItem"

  spec.public_header_files = "CrawlerURLAVPlayerItem/**/*.h"

  spec.framework  = "AVKit"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
