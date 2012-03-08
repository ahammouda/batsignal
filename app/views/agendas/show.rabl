object @agenda

attributes :id, :name, :description, :user_id, :created_at

node :owner_path do |user|
	user_path(@user)
end
