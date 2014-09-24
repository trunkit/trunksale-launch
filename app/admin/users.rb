ActiveAdmin.register User do
  actions :index, :show

  index do
  	column :id
  	column "Email", :email, :sortable => :email
	 column("Count") {|user| user.referrals.count}
  	column "Referrer", :referrer
  	column "created_at", :created_at, :sortable => :created_at
  end

  csv do 
  	column :id
  	column :email
	column("Count") {|user| user.referrals.count}
  	column("Referrer")  { |user| user.referrer.inspect }
  	column :created_at
  end

end
