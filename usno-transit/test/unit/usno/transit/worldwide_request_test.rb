require 'test_helper'

describe USNO::Transit::WorldWideRequest do
  before do
    @subject = USNO::Transit::WorldWideRequest
    @params = {
      city: "Greenwich Test",
      count: 3,
      date: Time.now,
      z_meters: 0,
      long: 0,
      lat: 0,
      object: "4"
    }
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new(@params).must_respond_to :call
    end

    it "errors when initialized without required dependencies" do
      -> { @subject.new(@params.reject { |k| k.to_s == 'lat' }) }.must_raise RuntimeError
      -> { @subject.new(@params.reject { |k| k.to_s == 'long' }) }.must_raise RuntimeError
    end
  end

  describe "as an instance" do
    it "executes successfully" do
      result = @subject.new(@params).call
      result.successful?.must_equal true
      result.data.must_include "Greenwich Test"
      result.must_be_kind_of PayDirt::Result
    end
  end
end
