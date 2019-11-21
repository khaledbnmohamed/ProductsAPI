# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  avatar                 :string
#  password               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  admin                  :boolean          default(FALSE)
#  role                   :integer
#

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    let(:user) { FactoryBot.create(:user) }

    it 'ensure first name presence' do
      user.save
      expect(user).to eq(true)
    end

    it 'ensure email presence' do
      user = User.new(name: 'Lola', email: 'khaled@hotmail.com').save
      expect(user).to eq(true)
    end

  end
  context 'scope tests' do

  end
end
