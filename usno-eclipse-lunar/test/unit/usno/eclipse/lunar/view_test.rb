require "test_helper"
include Minitest::Assertions

describe USNO::Eclipse::Lunar::Data do
  before do
    @subject = USNO::Eclipse::Lunar::Data
    @valid_eclipses = USNO::Eclipse::Lunar::Eclipses.hash.values
  end
  describe "as an instance" do
    it "instantiates for each valid eclipse" do
      @valid_eclipses.each do |k|
        assert_instance_of(@subject, @subject.new(lat: 0, long: 0, date: k))
      end
    end
  end
end
