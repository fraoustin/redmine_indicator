class IndicatorProjectSttingsAdd < ActiveRecord::Migration[4.2]

  def self.up
    add_column :projects, :indicator_left_top, :text
    add_column :projects, :indicator_left_bottom, :text
    add_column :projects, :indicator_right, :text
    ProjectCustomField.find_by_name('indicator_left_top').delete unless ProjectCustomField.find_by_name('indicator_left_top').nil?
    ProjectCustomField.find_by_name('indicator_left_bottom').delete unless ProjectCustomField.find_by_name('indicator_left_bottom').nil?
    ProjectCustomField.find_by_name('indicator_right').delete unless ProjectCustomField.find_by_name('indicator_right').nil?
  end

  # method called when installing the plugin
  def self.down
    remove_column :projects, :indicator_left_top, :text
    remove_column :projects, :indicator_left_bottom, :text
    remove_column :projects, :indicator_right, :text
    if ProjectCustomField.find_by_name('indicator_left_top').nil?
      fieldLeftTop = ProjectCustomField.create!(:name => 'indicator_left_top', :field_format => 'list',
                                   :multiple => 'true',
                                   :visible => false,
                                   :possible_values =>
                                   ['summary','opened_closed_today','opened_closed','opened_closed_10days','opened_closed_10weeks','spent_time_10days','spent_time_10weeks','by_priority','by_priority_all','by_status','by_status_all','by_tracker','by_tracker_all'])
    end
    if ProjectCustomField.find_by_name('indicator_left_bottom').nil?
      fieldLeftBottom = ProjectCustomField.create!(:name => 'indicator_left_bottom', :field_format => 'list',
                                   :multiple => 'true',
                                   :visible => false,
                                   :possible_values =>
                                   ['summary','opened_closed_today','opened_closed','opened_closed_10days','opened_closed_10weeks','spent_time_10days','spent_time_10weeks','by_priority','by_priority_all','by_status','by_status_all','by_tracker','by_tracker_all'])
    end
    if ProjectCustomField.find_by_name('indicator_right').nil?
      fieldRight = ProjectCustomField.create!(:name => 'indicator_right', :field_format => 'list',
                                   :multiple => 'true',
                                   :visible => false,
                                   :possible_values =>
                                   ['summary','opened_closed_today','opened_closed','opened_closed_10days','opened_closed_10weeks','spent_time_10days','spent_time_10weeks','by_priority','by_priority_all','by_status','by_status_all','by_tracker','by_tracker_all'])
    end
  end

end
