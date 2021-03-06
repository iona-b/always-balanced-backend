class ScheduleActivity < ApplicationRecord

    belongs_to :activity
    belongs_to :schedule

    validates :schedule_id, presence: true
    validates :activity_id, presence: true

    def self.get_possible_activities(chosen_relaxation_category_id, schedule_id, activity_length)
        if activity_length === "short"
            possible_activities = Activity.all.filter do |activity|
                activity.relaxation_category.id === chosen_relaxation_category_id && activity.short_activity === true
            end
        else 
            possible_activities = Activity.all.filter do |activity|
                activity.relaxation_category.id === chosen_relaxation_category_id && activity.long_activity === true
            end
        end
        activity = possible_activities.sample
    end

    def self.ensure_unique_activities(chosen_relaxation_category_id, schedule_id, activity_length)
        valid = false
        while (valid === false) do
            activity = ScheduleActivity.get_possible_activities(chosen_relaxation_category_id, schedule_id, activity_length)
            schedule = Schedule.find_by(id: schedule_id)
            if schedule.schedule_activities.count > 0
                activities = schedule.schedule_activities.filter do |schedule_activity|
                    schedule_activity.activity_id === activity.id 
                end
                if activities.length === 0
                    valid = true
                end
            else 
                valid = true
            end
        end
        activity
    end

end
