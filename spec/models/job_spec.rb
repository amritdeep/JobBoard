require 'rails_helper'

RSpec.describe Job, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "should have title, location and summary" do
  	job = build(:job)
  	binding.pry
  	expect(:job).to_be valid
  end

end
