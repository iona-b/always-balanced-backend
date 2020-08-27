# # User: username, password_digest, start_work_time, min_num_hours, max_num_hours, relaxation_category_1, relaxation_category_2, relaxation_category_3

# user_1 = User.create(username: "iona", password_digest:"123", start_work_time:8, min_num_hours:6, max_num_hours:9)


# # User Relaxation Categories: user_id, relaxation_category_id

# user_relaxation_category_1 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 1)
# user_relaxation_category_2 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 3)
# user_relaxation_category_3 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 5)

# # Relaxation Category: category_name

# relaxation_category_1 = RelaxationCategory.create(category_name: "Creative")
# relaxation_category_2 = RelaxationCategory.create(category_name: "Sports")
# relaxation_category_3 = RelaxationCategory.create(category_name: "Mindfulness")
# relaxation_category_4 = RelaxationCategory.create(category_name: "Digital")
# relaxation_category_5 = RelaxationCategory.create(category_name: "Culinary")
# relaxation_category_6 = RelaxationCategory.create(category_name: "Reading and Writing")
# relaxation_category_7 = RelaxationCategory.create(category_name: "Musical")
# relaxation_category_8 = RelaxationCategory.create(category_name: "Social")
# relaxation_category_9 = RelaxationCategory.create(category_name: "Comfort")


# # Activites: activity_description, relaxation_category_id, short_activity, long_activity

# activity_1 = Activity.create(activity_description:"Drink some green tea", relaxation_category_id:2, short_activity:true, long_activity:false)
# activity_2 = Activity.create(activity_description:"Drink some green tea", relaxation_category_id:4, short_activity:true, long_activity:false)
# activity_3 = Activity.create(activity_description:"Eat some chocolate", relaxation_category_id:4, short_activity:true, long_activity:false)
# activity_4 = Activity.create(activity_description:"Meditate", relaxation_category_id:2, short_activity:true, long_activity:true)
# activity_5 = Activity.create(activity_description:"Take a short walk", relaxation_category_id:2, short_activity:true, long_activity:false)
# activity_6 = Activity.create(activity_description:"Massage your scalp", relaxation_category_id:2, short_activity:true, long_activity:false)
# activity_7 = Activity.create(activity_description:"Massage your scalp", relaxation_category_id:8, short_activity:true, long_activity:false)
# activity_8 = Activity.create(activity_description:"Journal about your feelings", relaxation_category_id:2, short_activity:true, long_activity:false)
# activity_9 = Activity.create(activity_description:"Journal about your feelings", relaxation_category_id:5, short_activity:true, long_activity:false)
# activity_10 = Activity.create(activity_description:"Cuddle your pet", relaxation_category_id:7, short_activity:true, long_activity:false)
# activity_11 = Activity.create(activity_description:"Cuddle your pet", relaxation_category_id:8, short_activity:true, long_activity:false)
# activity_12 = Activity.create(activity_description:"Call a friend", relaxation_category_id:7, short_activity:false, long_activity:true)
# activity_13 = Activity.create(activity_description:"Call a family member", relaxation_category_id:7, short_activity:false, long_activity:true)
# activity_14 = Activity.create(activity_description:"Send a friend a message", relaxation_category_id:7, short_activity:true, long_activity:false)

# puts "Seeds done!"