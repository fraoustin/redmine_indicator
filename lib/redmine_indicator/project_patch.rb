module RedmineIndicator
  module ProjectPatch
    extend ActiveSupport::Concern

    ::AVAILABLE_REPORTS = ['issues_summary','issues_opened_closed_today','issues_opened_closed','issues_opened_closed_10days',
                           'issues_opened_closed_10weeks','spent_time_10days','spent_time_10weeks','issues_by_priority',
                           'issues_by_priority_all','issues_by_status','issues_by_status_all','issues_by_tracker','issues_by_tracker_all']

    included do
      serialize :indicator_left_top
      serialize :indicator_left_bottom
      serialize :indicator_right
      safe_attributes :indicator_left_top, :indicator_left_bottom, :indicator_right
    end

    def indicator_left_top_empty
      indicator_left_top.to_a.reject(&:blank?).empty?
    end

    def report_options
      ::AVAILABLE_REPORTS.map {|name| [I18n.t("indicator_report_" + name), name]}
    end

  end
end
