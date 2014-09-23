class User < ActiveRecord::Base
    belongs_to :referrer, :class_name => "User", :foreign_key => "referrer_id"
    has_many :referrals, :class_name => "User", :foreign_key => "referrer_id"
    
    attr_accessible :email

    validates :email, :uniqueness => true, :format => { :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i, :message => "Invalid email format." }
    validates :referral_code, :uniqueness => true

    before_create :create_referral_code
    after_create :send_welcome_email

    REFERRAL_STEPS = [
        {
            'count' => 2,
            "html" => "Early Access<br>to The Sale",
            "class" => "two",
            "image" =>  ActionController::Base.helpers.asset_path("refer/earlyAccess@2x.png")
        },
        {
            'count' => 5,
            "html" => "An Additonal 5% OFF<br>Your First Purchase",
            "class" => "three",
            "image" => ActionController::Base.helpers.asset_path("refer/cream-tooltip@2x.png")
        },
        {
            'count' => 10,
            "html" => "Free Shipping<br>For Life",
            "class" => "four",
            "image" => ActionController::Base.helpers.asset_path("refer/truman@2x.png")
        },
        {
            'count' => 25,
            "html" => "A Gift Card to<br>Your Favorite Boutique",
            "class" => "five",
            "image" => ActionController::Base.helpers.asset_path("refer/winston@2x.png")
        },
    ]

    private

    def create_referral_code
        referral_code = SecureRandom.hex(5)
        @collision = User.find_by_referral_code(referral_code)

        while !@collision.nil?
            referral_code = SecureRandom.hex(5)
            @collision = User.find_by_referral_code(referral_code)
        end

        self.referral_code = referral_code
    end

    def send_welcome_email
      # UserMailer.signup_email(self).deliver
    end
end
