require 'active_support/all'

unless defined?(PROJECT_ROOT)
  PROJECT_ROOT = File.expand_path('../..', __FILE__)
end

Dir.glob(File.join(PROJECT_ROOT, 'spec', 'support', '*.rb')).each do |file|
  require file
end

Dir.glob(File.join(PROJECT_ROOT, 'lib', '*.rb')).each do |file|
  require file
end
