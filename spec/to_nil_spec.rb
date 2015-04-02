require 'spec_helper'

describe ToNil do
  it 'has a version number' do
    expect(ToNil::VERSION).not_to be nil
  end

  [String, Object, Hash, Array, BasicObject].each do |klass|
    it "returns nil for a #{klass} instance" do
      expect(klass.new.to_nil).to be_nil
    end

    it "returns nil for a #{klass} instance with a bang" do
      expect(klass.new.to_nil!).to be_nil
    end

    it "raises an error when #{klass} instance is not nil with a bang" do
      allow_any_instance_of(klass).to receive(:to_nil).and_return('Not Nil!')
      expect{klass.new.to_nil!}.to raise_error
    end
  end

  it "returns nil for nil.to_nil" do
    expect(nil.to_nil).to be_nil
  end

  it "returns nil for nil.to_nil with a bang" do
    expect(nil.to_nil!).to be_nil
  end
end
