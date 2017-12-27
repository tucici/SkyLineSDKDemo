Pod::Spec.new do |s| 
  s.name         = "SkyLineSDK"      #SDK名称
  s.version      = "1.0.5"           #版本号
  s.homepage     = "https://github.com/tucici/SkyLineSDKDemo.git"  #工程主页地址
  s.summary      = "天际游戏sdk"  #项目的简单描述
  s.description  = "天际游戏sdk,"   
  s.license      = "MIT"  #协议类型
  s.author       = { "tucici" => "unknown" } #作者及联系方式
  s.platform     = :ios, "9.0"  #支持的平台
  s.ios.deployment_target = "9.0"     #最低系统版本
  s.source       = { :git => "https://github.com/tucici/SkyLineSDKDemo.git" ,:tag => "1.0.5"}   #工程地址及版本号
  s.requires_arc = true   #是否必须arc
  s.source_files = "SkyLineSDK"   #SDK实际的重要文件路径，这里有个坑，后面文章再说
  s.frameworks   = "UIKit","Foundation"    #需要导入的frameworks名称，注意不要带上frameworks
end


