# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  token      :string
#  active     :boolean          default("true")
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Session < ApplicationRecord
  belongs_to :user
end
