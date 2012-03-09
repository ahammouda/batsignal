object @agenda

attributes :id, :name, :description, :user_id, :created_at

node :owner_path do |user|
	user_path(@user)
end

node :owner_thumb_avatar_url do |user|
	@user.avatar_url(:thumb)
end

node :owner_profile_avatar_url do |user|
	@user.avatar_url(:profile)
end
