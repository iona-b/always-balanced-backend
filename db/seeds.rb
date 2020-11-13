# User: username, password_digest, start_work_time, min_num_hours, max_num_hours

user_1 = User.create(username: "iona", password:'123', start_work_time:"09:00", min_num_hours:6, max_num_hours:9)
user_2 = User.create(username: "michiel", password:'123', start_work_time:"08:00", min_num_hours:6, max_num_hours:9)
user_3 = User.create(username: "yoko", password:'123', start_work_time:"09:00", min_num_hours:6, max_num_hours:9)


# Relaxation Category: category_name

relaxation_category_1 = RelaxationCategory.create(category_name: "Creative")
relaxation_category_2 = RelaxationCategory.create(category_name: "Sports")
relaxation_category_3 = RelaxationCategory.create(category_name: "Mindfulness")
relaxation_category_4 = RelaxationCategory.create(category_name: "Digital")
relaxation_category_5 = RelaxationCategory.create(category_name: "Culinary")
relaxation_category_6 = RelaxationCategory.create(category_name: "Reading and Writing")
relaxation_category_7 = RelaxationCategory.create(category_name: "Musical")
relaxation_category_8 = RelaxationCategory.create(category_name: "Social")
relaxation_category_9 = RelaxationCategory.create(category_name: "Comfort")


# User Relaxation Categories: user_id, relaxation_category_id

user_relaxation_category_1 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 1)
user_relaxation_category_2 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 3)
user_relaxation_category_3 = UserRelaxationCategory.create(user_id: 1, relaxation_category_id: 5)


# Activites: activity_description, relaxation_category_id, short_activity, long_activity

# 1. Creative
Activity.create(activity_description:"Journal about your feelings", relaxation_category_id:1, short_activity:true, long_activity:false)
Activity.create(activity_description:"Design a postcard that you will never send", relaxation_category_id:1, short_activity:false, long_activity:true)
Activity.create(activity_description:"Sketch the view from your window", relaxation_category_id:1, short_activity:true, long_activity:true) 
Activity.create(activity_description:"Draw a cartoon of your pet", relaxation_category_id:1, short_activity:true, long_activity:true) 
Activity.create(activity_description:"Write the lyrics for a musical about your pet", relaxation_category_id:1, short_activity:true, long_activity:true)
Activity.create(activity_description:"Edit some of your recent pictures", relaxation_category_id:1, short_activity:true, long_activity:false)
Activity.create(activity_description:"Do some coloring in an coloring book", relaxation_category_id:1, short_activity:true, long_activity:false)
Activity.create(activity_description:"Do some freestyle dancing to your favourite song", relaxation_category_id:1, short_activity:true, long_activity:false)
Activity.create(activity_description:"Draw your favourite cartoon character", relaxation_category_id:1, short_activity:true, long_activity:true)
Activity.create(activity_description:"Learn a new card trick", relaxation_category_id:1, short_activity:true, long_activity:false)
Activity.create(activity_description:"Sign up for an online class to learn a new creative hobby", relaxation_category_id:1, short_activity:true, long_activity:false)

# 2. Sports
Activity.create(activity_description:"Take a short walk", relaxation_category_id:2, short_activity:true, long_activity:false)
Activity.create(activity_description:"Do some strength exercises", relaxation_category_id:2, short_activity:true, long_activity:false) 
Activity.create(activity_description:"Play with your pet", relaxation_category_id:2, short_activity:true, long_activity:false)
Activity.create(activity_description:"Go for a bike ride", relaxation_category_id:2, short_activity:false, long_activity:true)
Activity.create(activity_description:"Take some time to stretch", relaxation_category_id:2, short_activity:true, long_activity:false)
Activity.create(activity_description:"Learn how to juggle", relaxation_category_id:2, short_activity:true, long_activity:true)
Activity.create(activity_description:"Break your push-up record", relaxation_category_id:2, short_activity:true, long_activity:false)
Activity.create(activity_description:"Do your favourite cardio activity", relaxation_category_id:2, short_activity:false, long_activity:true)
Activity.create(activity_description:"Take a long walk", relaxation_category_id:2, short_activity:false, long_activity:true)

# 3. Mindfulness
Activity.create(activity_description:"Drink some green tea", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Massage your scalp", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Meditate", relaxation_category_id:3, short_activity:true, long_activity:true)
Activity.create(activity_description:"Spend some time practising yoga", relaxation_category_id:3, short_activity:true, long_activity:true)
Activity.create(activity_description:"Do absolutely nothing", relaxation_category_id:3, short_activity:true, long_activity:false) 
Activity.create(activity_description:"Take a powernap", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Write down 3 recent accomplishments", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Write down 5 things you are grateful for", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Write a journal entry about anything that's causing you stress or anxiety", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Take a moment to discover and feel some of the interesting textures in your immediate surroundings", relaxation_category_id:3, short_activity:true, long_activity:false)
Activity.create(activity_description:"Tidy up your immediate surroundings", relaxation_category_id:3, short_activity:true, long_activity:false)

# 4. Digital
Activity.create(activity_description:"Watch an episode of your favourite tv show", relaxation_category_id:4, short_activity:false, long_activity:true)
Activity.create(activity_description:"Create a new board on Pinterest", relaxation_category_id:4, short_activity:true, long_activity:true)
Activity.create(activity_description:"Play your favourite mobile game", relaxation_category_id:4, short_activity:true, long_activity:true) 
Activity.create(activity_description:"Browse YouTube", relaxation_category_id:4, short_activity:true, long_activity:true)
Activity.create(activity_description:"Listen to an episode of your favourite podcast", relaxation_category_id:4, short_activity:false, long_activity:true)
Activity.create(activity_description:"Watch bloopers from your favourite show", relaxation_category_id:4, short_activity:true, long_activity:false)
Activity.create(activity_description:"Look up inspiration for your next holiday destination", relaxation_category_id:4, short_activity:true, long_activity:false)
Activity.create(activity_description:"Look at old pictures of you and your friends", relaxation_category_id:4, short_activity:true, long_activity:false)

# 5. Culinary
Activity.create(activity_description:"Drink some green tea", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Eat some chocolate", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Prepare a meal you've never made before", relaxation_category_id:5, short_activity:false, long_activity:true)
Activity.create(activity_description:"Find a new recipe to try", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Eat a piece of fresh fruit", relaxation_category_id:5, short_activity:true, long_activity:false) 
Activity.create(activity_description:"Make yourself a nice hot or cold drink", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Eat your favourite snack", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Have some ice cream", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Find a restaurant for your next dinner date", relaxation_category_id:5, short_activity:true, long_activity:false)
Activity.create(activity_description:"Look up new restaurants in your area", relaxation_category_id:5, short_activity:true, long_activity:false)

# 6. Reading and Writing 
Activity.create(activity_description:"Read a chapter of the book you're currently reading", relaxation_category_id:6, short_activity:true, long_activity:true)
Activity.create(activity_description:"Write a short humorous story about a current problem in your life", relaxation_category_id:6, short_activity:false, long_activity:true) 
Activity.create(activity_description:"Write a poem", relaxation_category_id:6, short_activity:true, long_activity:true)
Activity.create(activity_description:"Read an article on your favourite news app", relaxation_category_id:6, short_activity:true, long_activity:false)
Activity.create(activity_description:"Write a nice message to someone you care about", relaxation_category_id:6, short_activity:true, long_activity:true)
Activity.create(activity_description:"Write down 10 things that make you special", relaxation_category_id:6, short_activity:true, long_activity:false)
Activity.create(activity_description:"Read a post from your favourite blog", relaxation_category_id:6, short_activity:true, long_activity:false)

# 7. Musical
Activity.create(activity_description:"Listen to your favourite song", relaxation_category_id:7, short_activity:true, long_activity:false)
Activity.create(activity_description:"Listen to a song you've never heard before", relaxation_category_id:7, short_activity:true, long_activity:false)
Activity.create(activity_description:"Listen to songs from your childhood", relaxation_category_id:7, short_activity:true, long_activity:true) 
Activity.create(activity_description:"Listen to uplifting songs", relaxation_category_id:7, short_activity:true, long_activity:true)
Activity.create(activity_description:"Play your favourite instrument", relaxation_category_id:7, short_activity:true, long_activity:true)
Activity.create(activity_description:"Listen to a friend's playlist", relaxation_category_id:7, short_activity:true, long_activity:true)
Activity.create(activity_description:"Listen to classical music", relaxation_category_id:7, short_activity:true, long_activity:false)
Activity.create(activity_description:"Make a playlist to listen to while you work", relaxation_category_id:7, short_activity:true, long_activity:true)
Activity.create(activity_description:"Make a playlist of your favourite songs", relaxation_category_id:7, short_activity:true, long_activity:true)

# 8. Social
Activity.create(activity_description:"Call a friend", relaxation_category_id:8, short_activity:false, long_activity:true)
Activity.create(activity_description:"Call a family member", relaxation_category_id:8, short_activity:false, long_activity:true)
Activity.create(activity_description:"Send a friend a message", relaxation_category_id:8, short_activity:true, long_activity:false)
Activity.create(activity_description:"Call your partner", relaxation_category_id:8, short_activity:true, long_activity:true)
Activity.create(activity_description:"Catch up on instant messages", relaxation_category_id:8, short_activity:true, long_activity:false)
Activity.create(activity_description:"Reach out to a friend you haven't spoken to in a while", relaxation_category_id:8, short_activity:false, long_activity:true)
Activity.create(activity_description:"Send a nice message to someone who needs it", relaxation_category_id:8, short_activity:true, long_activity:true)
Activity.create(activity_description:"Do something nice for your partner", relaxation_category_id:8, short_activity:true, long_activity:true)
Activity.create(activity_description:"Check in with your parents", relaxation_category_id:8, short_activity:false, long_activity:true)

# 9. Comfort
Activity.create(activity_description:"Massage your scalp", relaxation_category_id:9, short_activity:true, long_activity:false)
Activity.create(activity_description:"Cuddle your pet", relaxation_category_id:9, short_activity:true, long_activity:false)
Activity.create(activity_description:"Change into fresh comfy clothes", relaxation_category_id:9, short_activity:true, long_activity:false) 
Activity.create(activity_description:"Curl up under a blanket", relaxation_category_id:9, short_activity:true, long_activity:true)
Activity.create(activity_description:"Put on a facemask", relaxation_category_id:9, short_activity:true, long_activity:false)
Activity.create(activity_description:"Take a refreshing shower", relaxation_category_id:9, short_activity:true, long_activity:false)
Activity.create(activity_description:"Drink a hot drink", relaxation_category_id:9, short_activity:true, long_activity:false)
Activity.create(activity_description:"Take a bath", relaxation_category_id:9, short_activity:false, long_activity:true)
Activity.create(activity_description:"Watch your favourite light-hearted film", relaxation_category_id:9, short_activity:false, long_activity:true)


# Schedules: date, user_id

schedule_1 = Schedule.create(date: "2020-08-29", user_id: 1)


# Schedule Activities: schedule_id, activity_id

schedule_activity_1 = ScheduleActivity.create(schedule_id: 1, activity_id: 1)


# Tasks: task_description, task_notes, user_id

task_1 = Task.create(task_description: "Homework", task_notes: "Finish homework", user_id: 1)


# Schedule Tasks: schedule_id, task_id

schedule_task_1 = ScheduleTask.create(schedule_id: 1, task_id: 1)


puts "Seeds done!"