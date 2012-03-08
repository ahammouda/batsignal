object @users

attributes :id, :username, :created_at

node :user_path do |user|
	user_path(user)
end

node :profile_avatar_url do |user|
	user.avatar_url(:profile)
end

node :thumb_avatar_url do |user|
	user.avatar_url(:thumb)
end

