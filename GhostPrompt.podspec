#
# Be sure to run `pod lib lint GhostPrompt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GhostPrompt"
  s.version          = "0.0.1"
  s.summary          = "Notification alert much like Android's SnackBar."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "Want Android's SnackBar like notification in your iOS app ? Well, it's here with customization in your hand. All you have to do is init GhostPrompt and pass it the view where you need to show it(highly suggested : self.view). Set parameters you want like appearingDirection, animationDuration, backgroundColor... Explore it ! If you want more, please suggest !"

  s.homepage         = "https://github.com/vipu1212/GhostPrompt"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { "Divyansh Singh" => "divyansh.1212@gmail.com" }
  s.source           = { :git => "https://github.com/vipu1212/GhostPrompt.git", :tag => s.version.to_s }
   s.social_media_url = 'https://in.linkedin.com/in/divyanshsingh92'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'GhostPrompt' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
