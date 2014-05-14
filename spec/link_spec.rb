require 'spec_helper'

describe Link do
  describe "base requirements" do
    it "takes a url on initialization"
    it "has a #url method"
  end

  describe "Mixed in behavior" do
    it "has the Shoutable module mixed in" do
      expect(Link.ancestors.include?(Comparable))
    end
  end
end