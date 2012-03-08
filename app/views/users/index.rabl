object @users

attributes :id, :username, :created_at

node :user_path do |user|
	user_path(user)
end
