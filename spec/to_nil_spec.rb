require 'spec_helper'

describe ToNil do
  it 'has a version number' do
    expect(ToNil::VERSION).not_to be nil
  end

  [String, Object, Hash, Array, BasicObject].each do |klass|
    it "returns nil for a #{klass} instance" do
      expect(klass.new.to_nil).to be_nil
    end
    
    it "returns nil for nil.to_nil? for a #{klass} instance" do
      expect(klass.new.to_nil?).to be_nil
    end
  end

  it "returns nil for nil.to_nil" do
    expect(nil.to_nil).to be_nil
  end
  
  it "returns nil for nil.to_nil? on nil" do
    expect(nil.to_nil?).to be_nil
  end
  
  it "returns nil for nil.to_nil? on non-nil" do
    expect(?0.to_nil?).to be_nil
  end
end
