require 'redmine'
class TagsApplicationHooks < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    return javascript_include_tag('indicator.js', :plugin => 'redmine_indicator') +
    stylesheet_link_tag("indicator.css", :plugin => "redmine_indicator", :media => "all")+
    stylesheet_link_tag("Chart.min.css", :plugin => "redmine_indicator", :media => "all")+
    
  end
end
