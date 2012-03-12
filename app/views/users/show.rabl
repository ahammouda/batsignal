object @user

attributes :id, :username, :created_at

node :logged_in do |user|
	if current_user.logged_in?
		true
	else
		false
	end
end

node :user_path do |user|
	user_path(user)
end

node :profile_avatar_url do |user|
	user.avatar_url(:profile)
end

node :thumb_avatar_url do |user|
	user.avatar_url(:thumb)
end

child :agendas do |agenda|
	node :user_agenda_path do |agenda|
		user_agenda_path(@user, agenda)
	end

	attributes :name, :created_at
end
