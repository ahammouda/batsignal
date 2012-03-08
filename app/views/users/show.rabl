object @user

attributes :id, :username, :created_at

node :user_path do |user|
	user_path(user)
end

child :agendas do |agenda|
	node :user_agenda_path do |agenda|
		user_agenda_path(@user, agenda)
	end

	attributes :name, :created_at
end
