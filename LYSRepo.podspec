#
# Be sure to run `pod lib lint LYSRepo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYSRepo'
  s.version          = '0.1.0'
  s.summary          = '工具.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MrLiuYS/LYSRepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrLiuYS' => '3050700400@qq.com' }
  s.source           = { :git => 'https://github.com/MrLiuYS/LYSRepo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'



  s.subspec 'LYSAliquots' do |ss|
    ss.source_files = 'LYSRepo/LYSAliquots/**/*.{h,m}'
    ss.dependency 'Masonry','~> 1.0.2'
  end



end
