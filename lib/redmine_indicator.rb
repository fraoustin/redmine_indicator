require 'redmine'
require 'redmine_indicator/project_patch'
#require 'redmine_indicator/setting_patch'

class TagsApplicationHooks < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    return javascript_include_tag('indicator.js', :plugin => 'redmine_indicator') +
    stylesheet_link_tag("indicator.css", :plugin => "redmine_indicator", :media => "all")+
    stylesheet_link_tag("Chart.min.css", :plugin => "redmine_indicator", :media => "all")
  end
end

module RedmineIndicator
  def self.apply_patch
    ::Project.send :include, ProjectPatch
    #::Setting.singleton_class.prepend SettingPatch
  end

  module Hooks
    class ViewProjectsShowRightHook < Redmine::Hook::ViewListener
      include Redmine::I18n
      render_on(:view_projects_show_right, :partial => 'projects/view_projects_show_right_indicator', :layout => false)
    end
    class ViewProjectsShowRightHook < Redmine::Hook::ViewListener
      include Redmine::I18n
      render_on(:view_projects_show_left, :partial => 'projects/view_projects_show_left_indicator', :layout => false)
    end
  end
end

