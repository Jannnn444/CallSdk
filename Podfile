

# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'
source "https://gitlab.linphone.org/BC/public/podspec.git"
source "https://github.com/CocoaPods/Specs.git"

def basic_pods
	if ENV['PODFILE_PATH'].nil?
		pod 'linphone-sdk', '~> 5.3.4'
	else
		pod 'linphone-sdk', :path => ENV['PODFILE_PATH']  # local sdk
	end
	
end


target '1108' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for 1108
  basic_pods

end





