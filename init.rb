# encoding: utf-8


require 'redmine'
begin
  require 'config/initializers/session_store.rb'
  rescue LoadError
end

def init_repeat
  Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
    next unless /\.rb$/ =~ file
    require_dependency file
  end
end

if Rails::VERSION::MAJOR >= 6
  # Dynamically load all Hooks & Patches
  Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
    next unless file.end_with?('.rb')
    require_relative "lib/#{file.delete_suffix(".rb") }"
  end
elsif Rails::VERSION::MAJOR >= 5
  ActiveSupport::Reloader.to_prepare do
    init_repeat
  end
elsif Rails::VERSION::MAJOR >= 3
  ActionDispatch::Callbacks.to_prepare do
    init_repeat
  end
else
  Dispatcher.to_prepare :redmine_indicator do
    init_repeat
  end
end

Rails.application.config.to_prepare do
  RedmineIndicator.apply_patch
end

# for redmine 5
Rails.application.config.after_initialize do
  RedmineIndicator.apply_patch
end

Redmine::Plugin.register :redmine_indicator do
  name 'Redmine Indicator'
  author 'Frederic Aoustin'
  description 'The redmine_indicator add block with main indicator on my page and project page'
  version '0.4.0'
  url 'https://github.com/fraoustin/redmine_indicator'
  author_url 'https://github.com/fraoustin'
  requires_redmine :version_or_higher => '2.3.0'
end
