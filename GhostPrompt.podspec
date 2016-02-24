#
# Be sure to run `pod lib lint GhostPrompt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GhostPrompt"
  s.version          = "0.0.3"
  s.summary          = "Notification alert much like Android's SnackBar."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "Want Android's SnackBar like notification in your iOS app ? Well, it's here with customization in your hand. All you have to do is init GhostPrompt and pass it the view where you need to show it (highly suggested : self.view)"

  s.homepage         = "https://github.com/vipu1212/GhostPrompt"
  s.screenshots     = "https://media.giphy.com/media/xT0BKBnnoc26g3In5u/giphy.gif"
s.license          = { :type => 'MIT', :text => <<-LICENSE
Copyright (c) 2016 Divyansh Singh <divyansh.1212@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

LICENSE
}
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
