require 'spec_helper'

describe Link do
  let(:link) { create(:link) }

  describe "#create_link" do
    it "should not save with a nil full_url" do
      link.full_url = nil

      expect {
        link.save
      }.to change(Link, :count).by(0)
    end

    it "should not save with an invalid full_url" do
      link.full_url = "asdf;"

      expect {
        link.save
      }.to change(Link, :count).by(0)
    end

    it "should generate a code" do
      link.save
      expect(link.code).to be_truthy
    end

  end
end