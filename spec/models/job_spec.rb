require 'rails_helper'

RSpec.describe Job, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "should have title, location and summary" do
  	job = create(:job)
  	expect(job.title).to eql("ROR Developer")
  	expect(job.location).to eql("TX")
  	expect(job.summary).to eql("ROR Developer")
  	expect(job.company).to eql("My company")
  end

end
