require 'rspec'
require_relative './container'


describe Container do

  context "simple case" do

    #heights = [12,24,14,23,24,15,32,18,20]
    before do
      heights = [12,16,14]
      @container = Container.new heights
    end

    describe "#force_get_max_value" do
      it "should return the max value" do
        expect(@container.force_get_max_value).to eql(24)
      end
    end

    describe "#smart_get_max_value" do
      it "should return the max value" do
        expect(@container.smart_get_max_value).to eql(24)
      end
    end
  end

end

