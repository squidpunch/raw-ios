# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'

require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  app.name = 'RAW'
  app.identifier = 'com.larrabee.raw-ios'

  app.short_version = Time.now.to_i.to_s
  app.version = (`git rev-list HEAD --count`.strip.to_i).to_s

  app.deployment_target = '7.1'

  app.icons = Dir.glob("resources/Icon*.png").map{|icon| icon.split("/").last}

  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]

  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

  app.info_plist['UILaunchStoryboardName'] = 'LaunchScreen'
  
  # app.fonts = ['Oswald-Regular.ttf', 'FontAwesome.otf'] # These go in /resources
  # app.frameworks += %w(QuartzCore CoreGraphics MediaPlayer MessageUI CoreData)
  #
  # app.vendor_project('vendor/Flurry', :static)
  # app.vendor_project('vendor/DSLCalendarView', :static, :cflags => '-fobjc-arc') # Using arc
  #
  app.pods do
    #   pod 'JGProgressHUD'
    pod 'SVProgressHUD'
    #   pod 'JMImageCache'
  end

  app.development do
    app.codesign_certificate = "iPhone Developer: David Larrabee (WY2GF49GM5)"
    app.provisioning_profile = "signing/raw-ios-development.mobileprovision"
  end

  app.release do
    app.entitlements['beta-reports-active'] = true
    app.entitlements['get-task-allow'] = false
    app.codesign_certificate = 'iPhone Distribution: David Larrabee'
    app.provisioning_profile = "signing/raw-ios.mobileprovision"
    # app.seed_id = "YOUR_SEED_ID"
    app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
    app.entitlements['keychain-access-groups'] = [ app.seed_id + '.' + app.identifier ]
  end
 
  puts "Name: #{app.name}"
  puts "Using profile: #{app.provisioning_profile}"
  puts "Using certificate: #{app.codesign_certificate}"
end

task :"build:simulator" => :"schema:build"
