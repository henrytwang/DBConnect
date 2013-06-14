# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  access_key      :string(255)
#  account_type_id :integer
#  avatar          :string(255)
#  email           :string(255)
#  first_name      :string(255)
#  github_handle   :string(255)
#  graduation_date :string(255)
#  intro           :text
#  last_login      :datetime
#  last_name       :string(255)
#  location        :string(255)
#  password_digest :string(255)
#  phone           :string(255)
#  status          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  	it { should be_instance_of(User) }
  	
end
